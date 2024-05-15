import {
  ID_TYPE,
  type AutoIncrementField,
  type CreatedAtField,
  type IFieldVisitor,
  type IdField,
  type NumberField,
  type StringField,
  type UpdatedAtField,
} from "@undb/table"
import { sql, type CreateTableBuilder } from "kysely"
import type { UnderlyingTable } from "./underlying-table"

export class UnderlyingTableFieldVisitor implements IFieldVisitor {
  constructor(
    private readonly t: UnderlyingTable,
    public tb: CreateTableBuilder<any, any>,
  ) {}

  #rawSQL: string[] = []

  get rawSQL() {
    return this.#rawSQL
  }

  updatedAt(field: UpdatedAtField): void {
    const tableName = this.t.name
    this.tb = this.tb.addColumn(field.id.value, "timestamp", (b) => b.defaultTo(sql`(CURRENT_TIMESTAMP)`).notNull())

    // TODO: better solution
    const query = `
    CREATE TRIGGER IF NOT EXISTS update_at_update_${tableName} AFTER UPDATE ON \`${tableName}\`
    BEGIN
    	update \`${tableName}\` SET ${field.id.value} = datetime('now') WHERE ${ID_TYPE} = NEW.${ID_TYPE};
    END;
        `
    this.#rawSQL.push(query)
  }
  autoIncrement(field: AutoIncrementField): void {
    this.tb = this.tb.addColumn(field.id.value, "integer", (b) => b.autoIncrement().primaryKey())
  }
  createdAt(field: CreatedAtField): void {
    this.tb = this.tb.addColumn(field.id.value, "timestamp", (b) => b.defaultTo(sql`CURRENT_TIMESTAMP`).notNull())
  }
  id(field: IdField): void {
    this.tb = this.tb.addColumn(field.id.value, "varchar(50)", (b) => b.notNull().unique())
  }
  string(field: StringField): void {
    this.tb = this.tb.addColumn(field.id.value, "varchar(255)")
  }
  number(field: NumberField): void {
    this.tb = this.tb.addColumn(field.id.value, "real")
  }
}
