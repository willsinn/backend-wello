class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :checklist, foreign_key: true
      t.string :detail
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
