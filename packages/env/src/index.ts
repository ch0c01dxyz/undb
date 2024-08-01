import { createEnv } from "@t3-oss/env-core"
import { z } from "@undb/zod"

const dbEnv = createEnv({
  server: {
    UNDB_DB_PROVIDER: z.enum(["sqlite", "turso"]).default("sqlite"),
    UNDB_DB_TURSO_URL: z.string().optional(),
    UNDB_DB_TURSO_AUTH_TOKEN: z.string().optional(),
  },
  runtimeEnv: import.meta.env,
  emptyStringAsUndefined: true,
})

export const env = createEnv({
  shared: {
    LOG_LEVEL: z.enum(["info", "debug", "error"]).default("info"),
  },
  clientPrefix: "UNDB_PUBLIC_",
  client: {},
  server: {
    UNDB_BASE_URL: z.string().optional(),
    UNDB_MAIL_HOST: z.string().optional(),
    UNDB_MAIL_PORT: z.string().optional(),
    UNDB_MAIL_DEFAULT_FROM: z.string().optional(),
  },
  runtimeEnv: import.meta.env,
  emptyStringAsUndefined: true,
  extends: [dbEnv],
})