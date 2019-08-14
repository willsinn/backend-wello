class ProjectSerializer < ActiveModel::Serializer
  attributes :id,:user_id, :title, :description
  has_many :items
end
