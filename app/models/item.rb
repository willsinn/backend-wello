class Item < ApplicationRecord
  belongs_to :board
  has_many :cards, dependent: :destroy
end
