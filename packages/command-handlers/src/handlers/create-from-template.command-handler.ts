import { checkPermission, injectSpaceMemberService, type ISpaceMemberService } from "@undb/authz"
import { CreateFromTemplateCommand, type ICreateFromTemplateCommandOutput } from "@undb/commands"
import { getCurrentUserId, mustGetCurrentSpaceId } from "@undb/context/server"
import { commandHandler } from "@undb/cqrs"
import { singleton } from "@undb/di"
import { type ICommandHandler } from "@undb/domain"
import { injectTemplateService, type ITemplateService } from "@undb/template"

@commandHandler(CreateFromTemplateCommand)
@singleton()
export class CreateFromTemplateCommandHandler
  implements ICommandHandler<CreateFromTemplateCommand, ICreateFromTemplateCommandOutput>
{
  constructor(
    @injectTemplateService()
    private readonly templateService: ITemplateService,
    @injectSpaceMemberService()
    private readonly spaceMemberService: ISpaceMemberService,
  ) {}

  async execute(command: CreateFromTemplateCommand): Promise<ICreateFromTemplateCommandOutput> {
    const spaceId = command.spaceId ?? mustGetCurrentSpaceId()
    const userId = getCurrentUserId()
    const member = (await this.spaceMemberService.getSpaceMember(userId, spaceId)).expect("Member not found")

    checkPermission(member.props.role, ["base:create"])
    const result = await this.templateService.createBase(command, spaceId)

    return { baseIds: result.map(({ base }) => base.id.value) }
  }
}
