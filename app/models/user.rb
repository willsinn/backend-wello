class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: true }

  has_many :boards

  has_many :user_boards
  has_many :boards, through: :user_boards
end
