class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :subject
      t.string :detail
      t.belongs_to :item, foreign_key: true


      t.timestamps
    end
  end
end
