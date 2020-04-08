class CardSerializer < ActiveModel::Serializer
  attributes :board_id, :id, :goal, :card_desc, :archived
  has_many :tasks
end
