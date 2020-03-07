class ItemSerializer < ActiveModel::Serializer
  attributes :id, :objective, :board_id
  has_many :tasks
end
