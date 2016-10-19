class MakeMaxDepthRequired < ActiveRecord::Migration[5.0]
  def up
    change_column :dives, :max_depth, :integer, null: false
  end

  def down
    change_column :dives, :max_depth, :integer, null: true
  end
end
