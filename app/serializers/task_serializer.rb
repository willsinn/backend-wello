class TaskSerializer < ActiveModel::Serializer
  attributes :id, :desc, :note, :item_id
end
