class TaskSerializer < ActiveModel::Serializer
  attributes :id, :note, :task_desc, :card_id, :archived
end
