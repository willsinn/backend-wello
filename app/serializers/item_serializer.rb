class ItemSerializer < ActiveModel::Serializer
  attributes :id, :detail, :completed, :checklist_id
end
