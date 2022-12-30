import { CreateFieldCommandHandler } from './create-field.command.handler'
import { CreateRecordCommandHandler } from './create-record.command.handler'
import { CreateTableCommandHandler } from './create-table.command.handler'
import { EditTableCommandHandler } from './edit-table.command.handler'
import { MoveFieldCommandHandler } from './move-field.command.handler'
import { SetFieldVisibilityCommandHandler } from './set-field-visibility.command.handler'
import { SetFieldWidthCommandHandler } from './set-field-width.command.handler'
import { SetFiltersCommandHandler } from './set-filters.command.handler'
import { SetKanbanFieldCommandHandler } from './set-kanban-field.command.handler'
import { SwitchDisplayTypeCommandHandler } from './switch-display-type.command.handler'

export const commandHandlers = [
  CreateTableCommandHandler,
  CreateRecordCommandHandler,
  CreateFieldCommandHandler,
  SetFiltersCommandHandler,
  SetKanbanFieldCommandHandler,
  SetFieldWidthCommandHandler,
  SetFieldVisibilityCommandHandler,
  MoveFieldCommandHandler,
  EditTableCommandHandler,
  SwitchDisplayTypeCommandHandler,
]
