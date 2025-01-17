import { env } from "@undb/env"
import { templates, type IBaseTemplateDTO, type ITemplateDTO } from "@undb/template"

function getTemplateImage(folder: string, file: string) {
  return env.UNDB_BASE_URL + "/assets/templates/" + folder + "/" + file
}

export const templateData: ITemplateDTO[] = [
  {
    id: "550e8400-e29b-41d4-a716-446655440000",
    icon: "🚀",
    name: "Project Management",
    categories: ["it"],
    cover: getTemplateImage("projectManagement", "cover.jpg"),
    description:
      "A comprehensive template for managing projects, tasks, and team collaboration. It includes features for tracking project progress, assigning tasks, managing resources, and facilitating team communication, helping you achieve project goals more efficiently.",
    template: {
      type: "base",
      template: templates.projectManagement as IBaseTemplateDTO,
    },
  },
  {
    id: "6ba7b814-9dad-11d1-80b4-00c04fd430c8",
    icon: "💼",
    name: "CRM",
    categories: ["sales"],
    cover: getTemplateImage("crm", "cover.jpg"),
    description: "A template for managing customer relationships, deals, and activities.",
    template: {
      type: "base",
      template: templates.crm as IBaseTemplateDTO,
    },
  },
  {
    id: "f47ac10b-58cc-4372-a567-0e02b2c3d479",
    icon: "💼",
    name: "Sales CRM",
    cover: getTemplateImage("salesCrm", "cover.jpg"),
    categories: ["sales", "crm"],
    description:
      "A CRM for sales. It includes features for tracking customer interactions, managing deals, and analyzing sales data.",
    template: {
      type: "base",
      template: templates.salesCrm as IBaseTemplateDTO,
    },
  },
  {
    id: "6ba7b810-9dad-11d1-80b4-00c04fd430c8",
    icon: "🎉",
    name: "Event Planning List",
    cover: getTemplateImage("eventPlanning", "cover.jpg"),
    description: "A template for planning events, including tasks, deadlines, and resources.",
    categories: ["sales"],
    template: {
      type: "base",
      template: templates.eventPlaningList as IBaseTemplateDTO,
    },
  },
  {
    id: "6ba7b811-9dad-11d1-80b4-00c04fd430c8",
    icon: "📝",
    name: "To-Do List",
    categories: ["other"],
    cover: getTemplateImage("todo", "cover.jpg"),
    description: "A simple template for managing daily tasks and reminders.",
    template: {
      type: "base",
      template: templates.todoList as IBaseTemplateDTO,
    },
  },
  {
    id: "6ba7b813-9dad-11d1-80b4-00c04fd430c8",
    icon: "📦",
    name: "Office Inventory Management",
    categories: ["finance"],
    cover: getTemplateImage("officeInventoryManagement", "cover.jpg"),
    description: "A template for managing office supplies, equipment, and inventory.",
    template: {
      type: "base",
      template: templates.officeInventoryManagement as IBaseTemplateDTO,
    },
  },
  {
    id: "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    icon: "📸",
    name: "Social Media Content",
    categories: ["marketing"],
    cover: getTemplateImage("socialMediaContent", "cover.jpg"),
    description: "A template for managing social media content, including posts, images, and videos.",
    template: {
      type: "base",
      template: templates.socialMediaContent as IBaseTemplateDTO,
    },
  },
]

// if (env.NODE_ENV === "development") {
//   templateData.unshift({
//     id: "test",
//     icon: "💼",
//     name: "Test",
//     categories: ["sales"],
//     description: "A template for testing",
//     template: {
//       type: "base",
//       template: templates.test as IBaseTemplateDTO,
//     },
//   })
// }
