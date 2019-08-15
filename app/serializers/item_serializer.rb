class ItemSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :objective
  has_many :cards
end
