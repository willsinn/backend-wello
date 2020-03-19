class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :note
      t.string :task_desc
      t.belongs_to :card, foreign_key: true


      t.timestamps
    end
  end
end
