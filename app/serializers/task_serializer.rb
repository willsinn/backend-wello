class TaskSerializer < ActiveModel::Serializer
  attributes :id, :desc, :note, :card_id
end
