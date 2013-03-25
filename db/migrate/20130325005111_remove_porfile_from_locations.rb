class RemovePorfileFromLocations < ActiveRecord::Migration
  def up
	remove_column :locations, :porfile_id
  end

  def down
  end
end
