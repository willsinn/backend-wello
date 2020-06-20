class BoardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :board_desc, :background, :team_name, :starred, :archived, :date_archived, :cards
  has_many :cards

  def cards
    self.object.cards.map do |card|
      { id: card.id,
        goal: card.goal,
        card_desc: card.card_desc,
        archived: card.archived,
        date_archived: card.date_archived,
        board_id: self.object.id,
        tasks: card.tasks.map do |task|
        { id: task.id,
          note: task.note,
          task_desc: task.task_desc,
          archived: task.archived,
          date_archived: task.date_archived,
          card_id: card.id }
      end }
    end
  end
end
