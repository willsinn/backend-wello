class TaskChecklistSerializer < ActiveModel::Serializer
  attributes :id, :title, :task_id
  has_many :task_checklist_items
end
