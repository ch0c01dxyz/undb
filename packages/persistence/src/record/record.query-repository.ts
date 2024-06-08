import { executionContext } from "@undb/context/server"
import { inject, singleton } from "@undb/di"
import { None, Option, Some, andOptions, type PaginatedDTO } from "@undb/domain"
import {
  ID_TYPE,
  RecordComositeSpecification,
  ViewIdVo,
  injectTableRepository,
  type AggregateResult,
  type Field,
  type IRecordDTO,
  type IRecordQueryRepository,
  type ITableRepository,
  type QueryArgs,
  type RecordId,
  type TableDo,
  type TableId,
  type ViewId,
} from "@undb/table"
import { QueryCreator, type AliasedExpression, type ExpressionBuilder, type SelectQueryBuilder } from "kysely"
import type { IQueryBuilder } from "../qb"
import { injectQueryBuilder } from "../qb.provider"
import { JoinTable } from "../underlying/reference/join-table"
import { UnderlyingTable } from "../underlying/underlying-table"
import { RecordSelectFieldVisitor } from "./record-select-field-visitor"
import { getRecordDTOFromEntity } from "./record-utils"
import { AggregateFnBuiler } from "./record.aggregate-builder"
import { RecordFilterVisitor } from "./record.filter-visitor"
import { RecordMapper } from "./record.mapper"

@singleton()
export class RecordQueryRepository implements IRecordQueryRepository {
  constructor(
    @injectQueryBuilder()
    private readonly qb: IQueryBuilder,
    @inject(RecordMapper)
    private readonly mapper: RecordMapper,
    @injectTableRepository()
    private readonly tableRepo: ITableRepository,
  ) {}

  async count(tableId: TableId): Promise<number> {
    const { total } = await this.qb
      .selectFrom(tableId.value)
      .select((eb) => eb.fn.countAll().as("total"))
      .executeTakeFirstOrThrow()

    return Number(total)
  }

  // TODO: move to new file
  private createQuery(table: TableDo, viewId: string | undefined) {
    const fields = table.getOrderedVisibleFields(viewId ? new ViewIdVo(viewId) : undefined)
    const referenceFields = table.schema.getReferenceFields(fields)

    const handleSelect = this.handleSelect(table, fields)

    // create cte for selection
    const qb = referenceFields.reduce<QueryCreator<any>>((qb, field) => {
      const joinTable = new JoinTable(table, field)
      const name = joinTable.getTableName()
      const valueField = joinTable.getValueFieldId()
      const symmetricField = joinTable.getSymmetricValueFieldId()

      return qb.with(field.id.value, (db) =>
        db
          .selectFrom(name)
          .innerJoin(field.foreignTableId, `${name}.${symmetricField}`, `${field.foreignTableId}.${ID_TYPE}`)
          .select((sb) => [
            `${name}.${valueField} as ${ID_TYPE}`,
            sb.fn("json_group_array", [sb.ref(`${name}.${symmetricField}`)]).as(field.id.value),
          ])
          .groupBy(`${name}.${valueField}`),
      )
    }, this.qb)

    return qb
      .selectFrom(table.id.value)
      .$call((qb) =>
        referenceFields.reduce(
          (qb, field) => qb.leftJoin(field.id.value, `${table.id.value}.${ID_TYPE}`, `${field.id.value}.${ID_TYPE}`),
          qb,
        ),
      )
      .select(handleSelect)
  }

  async findOneById(table: TableDo, id: RecordId): Promise<Option<IRecordDTO>> {
    const qb = this.createQuery(table, undefined)

    const result = await qb.where(`${table.id.value}.${ID_TYPE}`, "=", id.value).executeTakeFirst()

    return result ? Some(getRecordDTOFromEntity(table, result)) : None
  }

  private handleWhere(spec: Option<RecordComositeSpecification>) {
    return (eb: ExpressionBuilder<any, any>) => {
      const visitor = new RecordFilterVisitor(eb)
      if (spec?.isSome()) {
        spec.unwrap().accept(visitor)
      }
      return visitor.cond
    }
  }

  async find(table: TableDo, viewId: Option<ViewId>, query: Option<QueryArgs>): Promise<PaginatedDTO<IRecordDTO>> {
    const context = executionContext.getStore()
    const userId = context?.user?.userId!

    const t = new UnderlyingTable(table)
    const view = table.views.getViewById(viewId.into(undefined))
    const schema = table.schema

    const viewSpec = view.filter.map((f) => f.getSpec(schema)).flatten()
    const rlsSpec = table.rls.map((r) => r.getSpec(schema, "read", userId)).flatten()

    const filter = query.into(undefined)?.filter.into(undefined)
    const sort = view.sort.into(undefined)?.value

    const spec = andOptions(rlsSpec, viewSpec, Option(filter)) as Option<RecordComositeSpecification>
    const pagination = query.into(undefined)?.pagination.into(undefined)

    const handlePagination = (qb: SelectQueryBuilder<any, any, any>) => {
      const limit = pagination!.limit as number
      return qb.limit(limit).offset(((pagination?.page ?? 1) - 1) * limit)
    }

    const handleSort = (qb: SelectQueryBuilder<any, any, any>) => {
      return sort!.reduce((qb, s) => qb.orderBy(`${s.fieldId} ${s.direction}`), qb)
    }

    const qb = this.createQuery(table, viewId.into(undefined)?.value)

    const result = await qb
      .$if(!!pagination?.limit, handlePagination)
      .$if(!!sort, handleSort)
      .where(this.handleWhere(spec))
      .execute()

    // TODO: move total to aggregate result
    const { total } = await this.qb
      .selectFrom(t.name)
      .select((eb) => eb.fn.countAll().as("total"))
      .where(this.handleWhere(spec))
      .executeTakeFirstOrThrow()

    const records = result.map((r) => getRecordDTOFromEntity(table, r))
    return { values: records, total: Number(total) }
  }

  private handleSelect(table: TableDo, fields: Field[]) {
    return (sb: ExpressionBuilder<any, any>) => {
      const visitor = new RecordSelectFieldVisitor(new UnderlyingTable(table), this.qb, sb)
      for (const field of fields) {
        field.accept(visitor)
      }
      return visitor.select()
    }
  }

  async aggregate(table: TableDo, viewId: Option<ViewId>): Promise<Record<string, AggregateResult>> {
    const t = new UnderlyingTable(table)
    const view = table.views.getViewById(viewId.into(undefined))
    const aggregates = view.aggregate
    if (aggregates.isNone()) {
      return {}
    }
    if (aggregates.unwrap().isEmpty()) {
      return {}
    }

    const viewSpec = Option(
      view.filter.into(undefined)?.getSpec(table.schema).into(undefined),
    ) as Option<RecordComositeSpecification>

    const result = await this.qb
      .selectFrom(t.name)
      .select((eb) => {
        const ebs: AliasedExpression<any, any>[] = []

        for (const [fieldId, fieldAggregate] of aggregates.unwrap()) {
          if (!fieldAggregate) {
            continue
          }
          const field = table.schema.fieldMapById.get(fieldId)
          if (!field) {
            continue
          }
          const builder = new AggregateFnBuiler(eb, field, fieldAggregate)
          ebs.push(builder.build())
        }
        return ebs
      })
      .where(this.handleWhere(viewSpec))
      .executeTakeFirst()

    return result ?? {}
  }
}
