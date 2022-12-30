import { ITableRepository, SetFieldWidthCommand, SetFieldWidthCommandHandler as DomainHandelr } from '@egodb/core'
import type { ICommandHandler } from '@nestjs/cqrs'
import { CommandHandler } from '@nestjs/cqrs'
import { InjectTableReposiory } from '../adapters'

@CommandHandler(SetFieldWidthCommand)
export class SetFieldWidthCommandHandler extends DomainHandelr implements ICommandHandler<SetFieldWidthCommand, void> {
  constructor(
    @InjectTableReposiory()
    protected readonly tableRepo: ITableRepository,
  ) {
    super(tableRepo)
  }
}