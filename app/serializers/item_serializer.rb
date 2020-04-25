class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :completed, :checklist_id
end
