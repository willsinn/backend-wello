class Project < ApplicationRecord
  belongs_to :user

  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects

  has_many :items, dependent: :destroy
end
