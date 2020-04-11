class CardSerializer < ActiveModel::Serializer
  attributes :id, :goal, :card_desc, :archived, :board_id
  has_many :tasks
end
