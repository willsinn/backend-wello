class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :board, foreign_key: true
      t.string :objective

      t.timestamps
    end
  end
end
