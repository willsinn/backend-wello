class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :description
  has_many :items

  def items
    self.object.items.map do |item|
      { id: item.id,
        objective: item.objective,
        cards: item.cards.map do |card|
        { id:card.id,
          item_id: item.id,
          subject: card.subject,
          detail: card.detail }
      end }
    end
  end
end
