class ItemSerializer < ActiveModel::Serializer
  attributes :id, :objective
  has_many :cards
end
