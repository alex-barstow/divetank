class AddBannerToDives < ActiveRecord::Migration[5.0]
  def change
    add_column :dives, :banner, :string
  end
end
