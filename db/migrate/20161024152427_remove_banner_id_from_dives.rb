class RemoveBannerIdFromDives < ActiveRecord::Migration[5.0]
  def up
    remove_column :dives, :banner_id, :integer
  end

  def down
    add_column :dives, :banner_id, :integer
  end
end
