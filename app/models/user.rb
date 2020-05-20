class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # attr_accessor :password, :password_confirmation
  has_many :boards

  has_many :user_boards
  has_many :boards, through: :user_boards
end
