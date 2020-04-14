class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.string :green, default: NULL
      t.string :yellow, default: NULL
      t.string :orange, default: NULL
      t.string :red, default: NULL
      t.string :purple, default: NULL
      t.string :blue, default: NULL

      t.timestamps
    end
  end
end
