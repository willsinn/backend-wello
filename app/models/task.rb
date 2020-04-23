class Task < ApplicationRecord
  belongs_to :card
  has_many :task_checklists
  has_many :labels

  has_many :task_labels
  has_many :labels, through: :task_labels
end
