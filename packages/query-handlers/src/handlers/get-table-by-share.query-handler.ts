import { injectSpaceMemberService, type ISpaceMemberService } from "@undb/authz"
import { getCurrentUserId, setContextValue } from "@undb/context/server"
import { queryHandler } from "@undb/cqrs"
import { singleton } from "@undb/di"
import type { IQueryHandler } from "@undb/domain"
import { GetTableByShareQuery, type IGetTableByShareQuery } from "@undb/queries"
import { injectShareService, type IShareService } from "@undb/share"
import { injectSpaceService, type ISpaceService } from "@undb/space"
import { type ITableDTO } from "@undb/table"

@queryHandler(GetTableByShareQuery)
@singleton()
export class GetTableByShareQueryHandler implements IQueryHandler<any, ITableDTO> {
  constructor(
    @injectShareService()
    private readonly svc: IShareService,
    @injectSpaceService()
    private readonly spaceSvc: ISpaceService,
    @injectSpaceMemberService()
    private readonly spaceMemberSvc: ISpaceMemberService,
  ) {}

  async execute(query: IGetTableByShareQuery): Promise<ITableDTO> {
    const userId = getCurrentUserId()
    const space = await this.spaceSvc.setSpaceContext(setContextValue, { shareId: query.shareId })
    await this.spaceMemberSvc.setSpaceMemberContext(setContextValue, space.id.value, userId)

    return this.svc.getTableByShare(query.shareId)
  }
}
