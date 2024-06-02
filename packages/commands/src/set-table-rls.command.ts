import { Command, type CommandProps } from "@undb/domain"
import { setTableRLSDTO, type IRLSGroupDTO } from "@undb/table"
import { z } from "@undb/zod"

export const setTableRLSCommand = setTableRLSDTO

export type ISetTableRLSCommand = z.infer<typeof setTableRLSCommand>

export class SetTableRLSCommand extends Command implements ISetTableRLSCommand {
  public readonly tableId: string
  public readonly rls: IRLSGroupDTO | null

  constructor(props: CommandProps<ISetTableRLSCommand>) {
    super(props)
    this.tableId = props.tableId
    this.rls = props.rls
  }
}
