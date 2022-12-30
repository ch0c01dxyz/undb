import type {
  ITableSpec,
  ITableSpecVisitor,
  WithFieldVisibility,
  WithFieldWidth,
  WithTableId,
  WithTableName,
  WithTableView,
  WithViewFieldsOrder,
} from '@egodb/core'
import type { Result } from 'oxide.ts'
import { Err, Ok } from 'oxide.ts'
import type { TableInMemory } from './table'

type TableInMemoryPredicate = (value: TableInMemory, index: number, obj: TableInMemory[]) => unknown
const opposite =
  (fn: TableInMemoryPredicate) =>
  (...args: Parameters<TableInMemoryPredicate>): boolean =>
    !fn(...args)

export class TableInMemoryQueryVisitor implements ITableSpecVisitor {
  private predicate?: TableInMemoryPredicate
  private isOpposite = false

  getPredicate(): Result<TableInMemoryPredicate, Error> {
    if (!this.predicate) {
      return Err(new Error('missing predicate'))
    }

    if (this.isOpposite) {
      return Ok(opposite(this.predicate))
    }

    return Ok(this.predicate)
  }

  not(): this {
    this.isOpposite = !this.isOpposite
    return this
  }

  and(ss: ITableSpec[]): void {
    const ps = ss.map((s) => {
      const visitor = new TableInMemoryQueryVisitor()
      s.accept(visitor)
      return visitor.getPredicate().unwrap()
    })

    this.predicate = (...args) => ps.every((p) => p(...args))
  }

  idEqual(s: WithTableId): void {
    this.predicate = (t) => t.id === s.id.value
  }

  nameEqual(s: WithTableName): void {
    this.predicate = (t) => t.name === s.name.value
  }

  filterEqual(): void {
    throw new Error('cannot query by filters')
  }

  newField(): void {
    throw new Error('Method not implemented.')
  }

  schemaEqual(): void {
    throw new Error('Method not implemented.')
  }
  viewsEqual(): void {
    throw new Error('Method not implemented.')
  }

  private getView(t: TableInMemory, viewName?: string) {
    return t.views.find((v) => v.name === viewName)
  }
  fieldWidthEqual(s: WithFieldWidth): void {
    this.predicate = (t) => {
      const view = this.getView(t, s.viewName)
      if (!view) return false
      return view.fieldOptions?.[s.fieldName]?.width === s.width
    }
  }
  fieldVisibility(s: WithFieldVisibility): void {
    this.predicate = (t) => {
      const view = this.getView(t, s.viewName)
      if (!view) return false
      return !!view.fieldOptions?.[s.fieldName]?.hidden === s.hidden
    }
  }
  fieldsOrder(s: WithViewFieldsOrder): void {
    throw new Error('Method not implemented.')
  }
  viewEqual(s: WithTableView): void {
    throw new Error('Method not implemented.')
  }
}