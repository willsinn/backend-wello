class Checklist < ApplicationRecord
    belongs_to :task
    has_many :items
end
