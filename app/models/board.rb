class Board < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :owner, class_name: "User"

  belongs_to :user

  has_many :user_boards
  has_many :users, through: :user_boards

  has_many :cards
end
