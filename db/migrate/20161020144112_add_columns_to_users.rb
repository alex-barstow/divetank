class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :agency, :string
    add_column :users, :location, :string
    add_column :users, :starting_dive_number, :integer
    add_column :users, :certification_date, :string
    add_column :users, :certifications, :text
  end
end
