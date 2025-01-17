import { singleton } from "@undb/di"
import { None, Option, Some } from "@undb/domain"
import {
  TableIdSpecification,
  type ITableDTO,
  type ITableQueryRepository,
  type TableComositeSpecification,
  type TableId,
} from "@undb/table"
import type { IQueryBuilder } from "../qb"
import { injectQueryBuilder } from "../qb.provider"
import { TableDbQuerySpecHandler } from "./table-db.query-spec-handler"
import { TableMapper } from "./table.mapper"
import { TableReferenceVisitor } from "./table.reference-visitor"

@singleton()
export class TableQueryRepository implements ITableQueryRepository {
  constructor(
    @injectQueryBuilder()
    private readonly qb: IQueryBuilder,
  ) {}

  public get mapper() {
    return new TableMapper()
  }

  async find(spec: Option<TableComositeSpecification>): Promise<ITableDTO[]> {
    const tbs = await this.qb
      .selectFrom("undb_table")
      .selectAll()
      .$if(spec.isSome(), (qb) => new TableReferenceVisitor(qb).call(spec.unwrap()))
      .where((eb) => new TableDbQuerySpecHandler(this.qb, eb).handle(spec))
      .execute()

    return tbs.map((r) => this.mapper.toDTO(r))
  }

  async findOne(spec: TableComositeSpecification): Promise<Option<ITableDTO>> {
    const tb = await this.qb
      .selectFrom("undb_table")
      .selectAll()
      .$call((qb) => new TableReferenceVisitor(qb).call(spec))
      .where((eb) => new TableDbQuerySpecHandler(this.qb, eb).handle(Some(spec)))
      .executeTakeFirst()

    return tb ? Some(this.mapper.toDTO(tb)) : None
  }

  async findOneById(id: TableId): Promise<Option<ITableDTO>> {
    const spec = Some(new TableIdSpecification(id))
    const tb = await this.qb
      .selectFrom("undb_table")
      .selectAll()
      .$call((qb) => new TableReferenceVisitor(qb).call(spec.unwrap()))
      .where((eb) => new TableDbQuerySpecHandler(this.qb, eb).handle(spec))
      .executeTakeFirst()

    return tb ? Some(this.mapper.toDTO(tb)) : None
  }
}
