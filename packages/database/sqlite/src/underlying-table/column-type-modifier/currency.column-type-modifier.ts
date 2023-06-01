/* eslint-disable @typescript-eslint/no-empty-function */
/* eslint-disable @typescript-eslint/no-unused-vars */
import type { CurrencyField } from '@undb/core'
import {
  UnderlyingBoolColumn,
  UnderlyingColorColumn,
  UnderlyingCurrencyColumn,
  UnderlyingEmailColumn,
  UnderlyingRatingColumn,
  UnderlyingSelectColumn,
  UnderlyingStringColumn,
} from '../underlying-column.js'
import { BaseColumnTypeModifier } from './base.column-type-modifier.js'

export class CurrencyColumnTypeModifier extends BaseColumnTypeModifier<CurrencyField> {
  private readonly column = new UnderlyingCurrencyColumn(this.field.id.value, this.tableId)

  string(): void {
    const newColumn = new UnderlyingStringColumn(this.field.id.value, this.tableId)
    this.castTo('text', newColumn, this.column)
  }
  number(): void {
    const newColumn = new UnderlyingCurrencyColumn(this.field.id.value, this.tableId)
    this.castTo('real', newColumn, this.column)
  }
  color(): void {
    const newColumn = new UnderlyingColorColumn(this.field.id.value, this.tableId)
    this.alterColumn(newColumn, this.column)
  }
  email(): void {
    const newColumn = new UnderlyingEmailColumn(this.field.id.value, this.tableId)
    this.alterColumn(newColumn, this.column)
  }
  date(): void {
    throw new Error('Method not implemented.')
  }
  select(): void {
    const newColumn = new UnderlyingSelectColumn(this.field.id.value, this.tableId)
    this.alterColumn(newColumn, this.column)
  }
  bool(): void {
    const newColumn = new UnderlyingBoolColumn(this.field.id.value, this.tableId)
    this.castTo('bool', newColumn, this.column)
  }
  reference(): void {
    throw new Error('Method not implemented.')
  }
  tree(): void {
    throw new Error('Method not implemented.')
  }
  rating(): void {
    const newColumn = new UnderlyingRatingColumn(this.field.id.value, this.tableId)
    this.castTo('real', newColumn, this.column)
  }
  currency(): void {
    throw new Error('Method not implemented.')
  }
  attachment(): void {
    throw new Error('Method not implemented.')
  }
  collaborator(): void {
    const dropColumn = `ALTER TABLE ${this.tableId} DROP COLUMN ${this.column.name}`
    this.addQueries(dropColumn)
  }
  ['multi-select'](): void {
    const newColumn = new UnderlyingSelectColumn(this.field.id.value, this.tableId)
    this.alterColumn(newColumn, this.column)
  }
  ['date-range'](): void {
    throw new Error('Method not implemented.')
  }
}
