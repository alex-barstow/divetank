class AddDefaultValueToStartingDiveNumber < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :starting_dive_number, :integer, default: 0, null: false
  end

  def down
    change_column :users, :starting_dive_number, :integer, default: nil, null: true
  end
end
