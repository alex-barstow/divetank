class AddNameAndUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_name, :string, null: false
    add_index :users, :user_name, unique: true
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
  end
end
