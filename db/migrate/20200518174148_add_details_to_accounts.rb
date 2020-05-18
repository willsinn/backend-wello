class AddDetailsToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :organization, :string
  end
end
