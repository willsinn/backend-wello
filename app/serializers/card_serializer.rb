class CardSerializer < ActiveModel::Serializer
  attributes :board_id, :id, :goal, :card_desc
  has_many :tasks
end
