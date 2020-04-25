class TaskChecklistItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :completed, :checklist_id
end
