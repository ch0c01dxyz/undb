import type { IWorkspaceAction } from "./workspace-action"
import type { IWorkspaceMemberRole } from "./workspace-member"

export const workspacePermission: Record<IWorkspaceMemberRole, Record<IWorkspaceAction, boolean>> = {
  owner: {
    "workspace:list": true,
    "workspace:read": true,
    "workspace:update": true,
    "workspace:delete": true,

    "base:create": true,
    "base:list": true,
    "base:delete": true,
    "base:read": true,
    "base:update": true,

    "table:create": true,
    "table:update": true,
    "table:list": true,
    "table:delete": true,
    "table:read": true,

    "record:create": true,
    "record:list": true,
    "record:delete": true,
    "record:read": true,
    "record:update": true,

    "share:enable": true,
    "share:disable": true,

    "authz:invite": true,
    "authz:listInvitation": true,
    "authz:deleteInvitation": true,
  },
  admin: {
    "workspace:list": true,
    "workspace:read": true,
    "workspace:update": false,
    "workspace:delete": false,

    "base:create": true,
    "base:list": true,
    "base:delete": true,
    "base:read": true,
    "base:update": true,

    "table:create": true,
    "table:update": true,
    "table:list": true,
    "table:delete": true,
    "table:read": true,

    "record:create": true,
    "record:list": true,
    "record:delete": true,
    "record:read": true,
    "record:update": true,

    "share:enable": true,
    "share:disable": true,

    "authz:invite": true,
    "authz:listInvitation": true,
    "authz:deleteInvitation": true,
  },
  viewer: {
    "workspace:list": true,
    "workspace:read": true,
    "workspace:update": false,
    "workspace:delete": false,

    "base:create": false,
    "base:list": true,
    "base:delete": false,
    "base:read": true,
    "base:update": false,

    "table:create": false,
    "table:update": false,
    "table:list": true,
    "table:delete": false,
    "table:read": true,

    "record:create": false,
    "record:list": true,
    "record:delete": false,
    "record:read": true,
    "record:update": false,

    "share:enable": false,
    "share:disable": false,

    "authz:invite": true,
    "authz:listInvitation": true,
    "authz:deleteInvitation": false,
  },
}