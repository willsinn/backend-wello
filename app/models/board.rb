class Board < ApplicationRecord
  belongs_to :user

  has_many :user_boards, dependent: :destroy
  has_many :users, through: :user_boards

  has_many :items, dependent: :destroy
end
