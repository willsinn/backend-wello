class CreateTaskChecklistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :task_checklist_items do |t|
      t.belongs_to :checklist, foreign_key: true
      t.string :item
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
