class CardSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :subject, :detail
end
