class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :dive_id, null: false
      t.string :image, null: false
    end
  end
end
