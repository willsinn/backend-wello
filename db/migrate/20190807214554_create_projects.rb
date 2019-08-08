class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user
      t.string :title
      t.string :description


      t.timestamps
    end
  end
end
