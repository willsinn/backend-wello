class Board < ApplicationRecord
  belongs_to :user

  has_many :user_boards
  has_many :users, through: :user_boards

  has_many :cards
end
