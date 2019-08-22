class ItemSerializer < ActiveModel::Serializer
  attributes :id, :objective, :project_id
  has_many :cards
end
