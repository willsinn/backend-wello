class BoardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :board_desc, :background, :team_name
  has_many :cards

  def cards
    self.object.cards.map do |card|
      { id: card.id,
        goal: card.goal,
        card_desc: card.card_desc,
        board_id: self.object.id,
        tasks: card.tasks.map do |task|
        { id: task.id,
          note: task.note,
          task_desc: task.task_desc,
          card_id: card.id }
      end }
    end
  end
end
