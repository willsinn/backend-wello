class CardSerializer < ActiveModel::Serializer
  attributes :id,  :subject, :detail, :item_id
end
