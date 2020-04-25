class TaskChecklistItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :completed, task_checklist_id
end
