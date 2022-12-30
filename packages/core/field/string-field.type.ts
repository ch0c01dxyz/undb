import * as z from 'zod'
import { baseFieldQuerySchema, createBaseFieldsSchema } from './field.base'
import { FIELD_TYPE_KEY } from './field.constant'
import { StringField } from './string.field'

export const stringTypeSchema = z.literal('string')
export type StringFieldType = z.infer<typeof stringTypeSchema>
const stringTypeObjectSchema = z.object({ [FIELD_TYPE_KEY]: stringTypeSchema })

export const createStringFieldSchema = createBaseFieldsSchema.merge(stringTypeObjectSchema)
export type ICreateStringFieldInput = z.infer<typeof createStringFieldSchema>

export const stringFieldQuerySchema = baseFieldQuerySchema.merge(stringTypeObjectSchema)

export const stringFieldValue = z.string().nullable()
export type IStringFieldValue = z.infer<typeof stringFieldValue>

export const createStringFieldValue = stringFieldValue
export type ICreateStringFieldValue = z.infer<typeof createStringFieldValue>

export const createStringFieldValue_internal = z
  .object({ value: createStringFieldValue })
  .merge(stringTypeObjectSchema)
  .merge(z.object({ field: z.instanceof(StringField) }))
export type ICreateStringFieldValue_internal = z.infer<typeof createStringFieldValue_internal>