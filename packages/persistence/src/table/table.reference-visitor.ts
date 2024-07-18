import type { ISpecification } from "@undb/domain"
import type {
  ITableSpecVisitor,
  TableBaseIdSpecification,
  TableComositeSpecification,
  TableFormsSpecification,
  TableIdSpecification,
  TableIdsSpecification,
  TableNameSpecification,
  TableSchemaSpecification,
  TableViewsSpecification,
  WithDuplicatedFieldSpecification,
  WithForeignRollupFieldSpec,
  WithFormIdSpecification,
  WithFormSpecification,
  WithNewFieldSpecification,
  WithNewFormSpecification,
  WithNewView,
  WithoutFieldSpecification,
  WithoutView,
  WithTableRLS,
  WithUpdatedFieldSpecification,
  WithView,
  WithViewAggregate,
  WithViewColor,
  WithViewFields,
  WithViewFilter,
  WithViewIdSpecification,
  WithViewOption,
  WithViewSort,
} from "@undb/table"
import type { SelectQueryBuilder } from "kysely"
import type { Database2, Table } from "../db"

export class TableReferenceVisitor implements ITableSpecVisitor {
  constructor(private sqb: SelectQueryBuilder<Database2, "undb_table", Table>) {}

  call(spec: TableComositeSpecification) {
    spec.accept(this)
    return this.sqb
  }

  withId(id: TableIdSpecification): void {}
  withBaseId(id: TableBaseIdSpecification): void {}
  idsIn(ids: TableIdsSpecification): void {}
  withName(name: TableNameSpecification): void {}
  withSchema(schema: TableSchemaSpecification): void {}
  withNewField(schema: WithNewFieldSpecification): void {}
  withDuplicateField(schema: WithDuplicatedFieldSpecification): void {}
  withoutField(schema: WithoutFieldSpecification): void {}
  withUpdatedField(spec: WithUpdatedFieldSpecification): void {}
  withTableRLS(rls: WithTableRLS): void {}
  withViews(views: TableViewsSpecification): void {}
  withView(views: WithView): void {}
  withNewView(views: WithNewView): void {}
  withoutView(view: WithoutView): void {}
  withViewId(spec: WithViewIdSpecification): void {
    this.sqb = this.sqb.leftJoin("undb_table_id_mapping", "undb_table_id_mapping.table_id", "undb_table.id")
  }
  withViewFilter(viewFilter: WithViewFilter): void {}
  withViewOption(viewOption: WithViewOption): void {}
  withViewColor(viewColor: WithViewColor): void {}
  withViewSort(viewSort: WithViewSort): void {}
  withViewAggregate(viewColor: WithViewAggregate): void {}
  withViewFields(fields: WithViewFields): void {}
  withForms(views: TableFormsSpecification): void {}
  withFormId(spec: WithFormIdSpecification): void {
    this.sqb = this.sqb.leftJoin("undb_table_id_mapping", "undb_table_id_mapping.table_id", "undb_table.id")
  }
  withNewForm(views: WithNewFormSpecification): void {}
  withForm(views: WithFormSpecification): void {}
  withForeignRollupField(spec: WithForeignRollupFieldSpec): void {}
  and(left: ISpecification, right: ISpecification): this {
    left.accept(this)
    right.accept(this)
    return this
  }
  or(left: ISpecification, right: ISpecification): this {
    left.accept(this)
    right.accept(this)
    return this
  }
  not(spec: ISpecification): this {
    spec.accept(this)
    return this
  }
  clone(): this {
    return this
  }
}
