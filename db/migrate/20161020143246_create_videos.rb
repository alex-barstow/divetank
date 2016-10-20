class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.integer :dive_id, null: false
      t.string :video_url, null: false
    end
  end
end
