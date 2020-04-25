class ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :title, :task_id
  has_many :items
  
end
