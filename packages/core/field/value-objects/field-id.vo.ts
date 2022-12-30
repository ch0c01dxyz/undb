import { NanoID } from '@egodb/domain'
import * as z from 'zod'

export const fieldIdSchema = z.string().min(1)

export class FieldId extends NanoID {
  private static FIELD_ID_PREFIX = ''
  private static FIELD_ID_SIZE = 5
  public get value(): string {
    return this.props.value
  }

  static create(): FieldId {
    const id = NanoID.createId(FieldId.FIELD_ID_PREFIX, this.FIELD_ID_SIZE)
    return new this(fieldIdSchema.parse(id))
  }

  static from(id: string): FieldId {
    return new this(id)
  }
}