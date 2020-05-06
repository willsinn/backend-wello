class LabelSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :task_id
end
