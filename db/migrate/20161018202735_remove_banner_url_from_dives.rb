class RemoveBannerUrlFromDives < ActiveRecord::Migration[5.0]
  def up
    remove_column :dives, :banner_url, :string
  end
  def down
    add_column :dives, :banner_url, :string
  end
end
