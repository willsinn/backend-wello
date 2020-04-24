class CreateTaskChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :task_checklists do |t|
      t.belongs_to :task, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
