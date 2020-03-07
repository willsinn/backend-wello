class BoardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :background, :team_name
  has_many :cards

  def cards
    self.object.cards.map do |card|
      { id: card.id,
        goal: card.goal,
        summary: card.summary,
        board_id: self.object.id,
        tasks: card.tasks.map do |task|
        { id: task.id,
          desc: task.desc,
          note: task.note,
          card_id: card.id }
      end }
    end
  end
end
