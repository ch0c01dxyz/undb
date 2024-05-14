import { CreateRecordCommand } from "@undb/commands"
import { commandHandler } from "@undb/cqrs"
import { singleton } from "@undb/di"
import type { ICommandHandler } from "@undb/domain"
import { createLogger } from "@undb/logger"
import { injectRecordsService, type IRecordsService } from "@undb/table"

@commandHandler(CreateRecordCommand)
@singleton()
export class CreateRecordCommandHandler implements ICommandHandler<CreateRecordCommand, any> {
  private readonly logger = createLogger(CreateRecordCommandHandler.name)

  constructor(
    @injectRecordsService()
    private readonly service: IRecordsService,
  ) {}

  async execute(command: CreateRecordCommand): Promise<any> {
    const record = await this.service.createRecord(command.tableId, { values: command.values })
  }
}
