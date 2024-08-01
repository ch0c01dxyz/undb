import { AggregateRoot, andOptions, None, Option } from "@undb/domain"
import type { ITableDTO } from "./dto"
import type { ITableEvents } from "./events"
import { $createFieldSpec, createFieldMethod } from "./methods/create-field.method"
import { createFormMethod } from "./methods/create-form.method"
import { createViewMethod } from "./methods/create-view.method"
import { deleteFieldMethod } from "./methods/delete-field.method"
import { deleteViewMethod } from "./methods/delete-view.method"
import { duplicateFieldMethod } from "./methods/duplicate-field.method"
import { duplicateViewMethod } from "./methods/duplicate-view.method"
import { setTableForm } from "./methods/set-table-form.method"
import { setTableRLS } from "./methods/set-table-rls.method"
import { setViewAggregate } from "./methods/set-view-aggregate.method"
import { setViewColor } from "./methods/set-view-color.method"
import { setViewFields } from "./methods/set-view-fields.method"
import { setViewFilter } from "./methods/set-view-filter.method"
import { setViewOption } from "./methods/set-view-option.method"
import { setViewSort } from "./methods/set-view-sort.method"
import { updateFieldMethod } from "./methods/update-field.method"
import { updateTable } from "./methods/update-table.method"
import { updateView } from "./methods/update-view.method"
import {
  FieldIdVo,
  RecordComositeSpecification,
  ViewFields,
  ViewOption,
  type Field,
  type FormId,
  type TableRLSGroup,
} from "./modules"
import type { FormsVO } from "./modules/forms/forms.vo"
import type { Schema } from "./modules/schema/schema.vo"
import type { Views } from "./modules/views/views.vo"
import { createReferenceField } from "./services/methods/create-table-field.method"
import type { TableId } from "./table-id.vo"
import type { TableNameVo } from "./table-name.vo"

export class TableDo extends AggregateRoot<ITableEvents> {
  public id!: TableId
  public name!: TableNameVo

  public baseId!: string

  public schema!: Schema
  public views!: Views
  public forms?: FormsVO
  public rls: Option<TableRLSGroup> = None

  $update = updateTable
  $updateView = updateView
  $setViewFilter = setViewFilter
  $setViewOption = setViewOption
  $setViewColor = setViewColor
  $setViewFields = setViewFields
  $setViewSort = setViewSort
  $setTableRLS = setTableRLS
  $setViewAggregate = setViewAggregate

  $createFieldSpec = $createFieldSpec
  $createField = createFieldMethod
  $updateField = updateFieldMethod
  $deleteField = deleteFieldMethod
  $duplicateField = duplicateFieldMethod
  $createForm = createFormMethod
  $createView = createViewMethod
  $duplicateView = duplicateViewMethod
  $deleteView = deleteViewMethod
  $setTableForm = setTableForm

  #createReferenceField = createReferenceField

  getOrderedFields(formId?: FormId, viewId?: string): Field[] {
    const fields = this.schema.fields
    if (formId) {
      const form = this.forms?.props.find((form) => form.id === formId.value)
      if (form) {
        return form.visibleFields.map((f) => this.schema.getFieldById(new FieldIdVo(f.fieldId)).unwrap())
      }
    }
    const showSystemFields = this.views.getViewById(viewId).showSystemFields
    return fields.filter((f) => (showSystemFields ? true : !f.isSystem))
  }

  getOrderedMutableFields(formId?: FormId): Field[] {
    return this.getOrderedFields(formId).filter((field) => field.isMutable)
  }

  getDefaultValues(formId?: FormId) {
    const schemaDefaultValues = this.schema.getDefaultValues()

    const form = this.forms?.props.find((form) => form.id === formId?.value)
    if (form) {
      const formDefaultValues = form.getDefaultValues()
      return { ...schemaDefaultValues, ...formDefaultValues }
    }
    return schemaDefaultValues
  }

  getHasRLS() {
    return !!this.rls.into(undefined)?.props.length
  }

  getViewFields(viewId?: string) {
    return this.views.getViewById(viewId).fields.unwrapOrElse(() => ViewFields.default(this))
  }

  getOrderedVisibleFields(viewId?: string): Field[] {
    const view = this.views.getViewById(viewId)

    const visibleFields = this.getViewFields(viewId).getVisibleFields()

    return visibleFields
      .map((fieldId) => this.schema.getFieldById(new FieldIdVo(fieldId)).unwrap())
      .filter((field) => (view.showSystemFields ? true : !field.isSystem))
  }

  getOrderedHiddenFields(viewId?: string): Field[] {
    const view = this.views.getViewById(viewId)

    const hiddenFields = this.getViewFields(viewId).getHiddenFields()

    return hiddenFields
      .map((fieldId) => this.schema.getFieldById(new FieldIdVo(fieldId)).unwrap())
      .filter((field) => (view.showSystemFields ? true : !field.isSystem))
  }

  getViewOption(viewId?: string) {
    return this.views.getViewById(viewId).option.unwrapOrElse(() => ViewOption.default())
  }

  getQuerySpec({ viewId, userId, filter }: { filter?: RecordComositeSpecification; viewId?: string; userId: string }) {
    const view = this.views.getViewById(viewId)
    const viewSpec = view.filter.map((f) => f.getSpec(this.schema)).flatten()
    const rlsSpec = this.rls.map((r) => r.getSpec(this.schema, "read", userId)).flatten()

    return andOptions(rlsSpec, viewSpec, Option(filter)) as Option<RecordComositeSpecification>
  }

  toJSON(): ITableDTO {
    return {
      id: this.id.value,
      name: this.name.value,
      baseId: this.baseId,
      schema: this.schema.toJSON(),
      views: this.views.toJSON(),
      rls: this.rls.into(undefined)?.toJSON(),
      forms: this.forms?.toJSON(),
    }
  }
}