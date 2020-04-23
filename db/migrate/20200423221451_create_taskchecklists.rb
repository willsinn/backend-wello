class CreateTaskCheckLists < ActiveRecord::Migration[5.2]
  def change
    create_table :taskchecklists do |t|
      t.belongs_to :task, foreign_key: true
      t.string :item
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
