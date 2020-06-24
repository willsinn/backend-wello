class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :card, foreign_key: true
      t.string :note
      t.string :task_desc
      t.boolean :archived, default: false
      t.string :date_archived

      t.timestamps
    end
  end
end
