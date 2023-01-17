import type { ITableRepository, ITableSpec, IUnderlyingTableManager, Table as CoreTable } from '@egodb/core'
import type { EntityManager } from '@mikro-orm/better-sqlite'
import type { Option } from 'oxide.ts'
import { None, Some } from 'oxide.ts'
import { Option as OptionEntity, SelectField, Table, Table as TableEntity } from '../../entity'
import { FieldFactory } from '../../entity/field.factory'
import { View as ViewEntity } from '../../entity/view'
import { TableSqliteMapper } from './table-sqlite.mapper'
import { TableSqliteMutationVisitor } from './table-sqlite.mutation-visitor'

export class TableSqliteRepository implements ITableRepository {
  constructor(protected readonly em: EntityManager, protected readonly tm: IUnderlyingTableManager) {}

  async findOneById(id: string): Promise<Option<CoreTable>> {
    const table = await this.em.findOne(TableEntity, id, { populate: ['fields.options', 'views'] })
    if (!table) return None

    return Some(TableSqliteMapper.entityToDomain(table).unwrap())
  }

  findOne(spec: ITableSpec): Promise<Option<CoreTable>> {
    throw new Error('Method not implemented.')
  }

  find(spec: ITableSpec): Promise<CoreTable[]> {
    throw new Error('Method not implemented.')
  }

  async insert(table: CoreTable): Promise<void> {
    await this.em.transactional(async (em) => {
      const tableEntity = new TableEntity(table)

      for (const field of table.schema.fields) {
        const fieldEntity = FieldFactory.create(tableEntity, field)
        if (fieldEntity instanceof SelectField && field.type === 'select') {
          for (const option of field.options.options) {
            const optionEntity = new OptionEntity(fieldEntity, option)
            em.persist(optionEntity)
          }
        }

        if (fieldEntity) {
          em.persist(fieldEntity)
        }
      }

      for (const view of table.views.views ?? []) {
        const viewEntity = new ViewEntity(tableEntity, view)
        em.persist(viewEntity)
      }

      em.persist(tableEntity)

      await this.tm.create(table)
    })
  }

  async updateOneById(id: string, spec: ITableSpec): Promise<void> {
    await this.em.transactional(async (em) => {
      const visitor = new TableSqliteMutationVisitor(id, em)

      spec.accept(visitor)

      await visitor.commit()
      await this.tm.update(id, spec)
    })
  }

  async deleteOneById(id: string): Promise<void> {
    await this.em.transactional(async (em) => {
      await em.qb(Table).update({ deletedAt: new Date() }).where({ id })
      await this.tm.delete(id)
    })
  }
}