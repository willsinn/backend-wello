class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :board, foreign_key: true
      t.string :goal
      t.string :card_desc
      t.boolean :archived, default: false
      t.string :date_archived

      t.timestamps
    end
  end
end
