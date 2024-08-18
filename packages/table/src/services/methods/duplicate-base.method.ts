import { BaseNameShouldBeUnique, WithBaseSpaceId, type Base, type IDuplicateBaseDTO } from "@undb/base"
import { applyRules, Some } from "@undb/domain"
import type { ISpaceId } from "@undb/space"
import { TableBaseIdSpecification } from "../../specifications"
import type { TableService } from "../table.service"

export async function duplicateBaseMethod(this: TableService, base: Base, spaceId: ISpaceId, dto: IDuplicateBaseDTO) {
  const bases = await this.baseRepository.find(new WithBaseSpaceId(spaceId))
  const baseNames = bases.map((b) => b.name.value)

  const spec = base.$duplicate(dto, baseNames)

  const { duplicatedBase } = spec

  applyRules(new BaseNameShouldBeUnique(baseNames.concat(duplicatedBase.name.value)))

  await this.baseRepository.insert(duplicatedBase)

  const tables = await this.repository.find(Some(new TableBaseIdSpecification(base.id.value)))
  await this.duplicateTables(spaceId, duplicatedBase, tables, dto.includeData)

  return duplicatedBase
}