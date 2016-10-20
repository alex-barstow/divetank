class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def up
    rename_column :dives, :type, :dive_type
  end

  def down
    rename_column :dives, :dive_type, :type
  end
end
