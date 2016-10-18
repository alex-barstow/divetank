class CreateDives < ActiveRecord::Migration[5.0]
  def change
    create_table :dives do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.integer :number
      t.string :site_name, null: false
      t.string :date, null: false
      t.string :location
      t.text :description
      t.integer :rating
      t.string :type
      t.boolean :favorited, default: false, null: false
      t.string :buddy_name
      t.integer :max_depth
      t.integer :average_depth
      t.string :duration
      t.text :weather
      t.integer :water_temp
      t.integer :air_temp
      t.string :banner_url
    end
  end
end
