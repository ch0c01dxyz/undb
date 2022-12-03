import { TextColumn } from './text.column'

it('should create new text column', () => {
  const column = TextColumn.create({
    name: 'hello',
    type: 'text',
    id: 'abc',
  })

  expect(column.unpack()).toMatchInlineSnapshot(`
    {
      "id": "abc",
      "name": "hello",
      "valueConstrains": {
        "required": undefined,
      },
    }
  `)

  expect(column.type).toBe('text')
})

it('should throw error if name is invalid', () => {
  const createColumn = () =>
    TextColumn.create({
      name: 'h',
      type: 'text',
      id: 'abc',
    })

  expect(createColumn).toThrowErrorMatchingInlineSnapshot(`
    "[
      {
        \\"code\\": \\"too_small\\",
        \\"minimum\\": 2,
        \\"type\\": \\"string\\",
        \\"inclusive\\": true,
        \\"message\\": \\"String must contain at least 2 character(s)\\",
        \\"path\\": []
      }
    ]"
  `)
})