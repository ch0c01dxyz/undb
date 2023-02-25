import { UpdateTableFormDrawer } from '../update-table-form/update-table-form-drawer'
import { TableList } from './table-list'

export const TableHaeder: React.FC = () => {
  return (
    <>
      <TableList />

      <UpdateTableFormDrawer />
    </>
  )
}