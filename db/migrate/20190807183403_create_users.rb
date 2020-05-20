class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, default: ""
      t.string :email, unique: true, default: :index_users_on_email
      t.string :encrypted_password, default: ""
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end
