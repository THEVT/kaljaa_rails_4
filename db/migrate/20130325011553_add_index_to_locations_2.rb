class AddIndexToLocations2 < ActiveRecord::Migration
  def change
	add_index :locations, [:profile_id, :updated_at]
  end
end
