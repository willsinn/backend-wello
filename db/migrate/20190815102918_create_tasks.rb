class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :desc
      t.string :note
      t.belongs_to :item, foreign_key: true


      t.timestamps
    end
  end
end
