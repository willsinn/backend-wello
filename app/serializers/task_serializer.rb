class TaskSerializer < ActiveModel::Serializer
  attributes :card_id, :id, :task_desc, :note
end
