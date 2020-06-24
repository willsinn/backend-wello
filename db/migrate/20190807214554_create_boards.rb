class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.references :user
      t.string :title
      t.string :board_desc
      t.string :background
      t.string :team_name
      t.boolean :starred, default: false
      t.boolean :archived, default: false
      t.string :date_archived


      t.timestamps
    end
  end
end
