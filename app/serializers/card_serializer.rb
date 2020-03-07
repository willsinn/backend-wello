class CardSerializer < ActiveModel::Serializer
  attributes :id, :goal, :summary, :board_id
  has_many :tasks
end
