class AddIndexToMiscs < ActiveRecord::Migration
  def change
	add_index :miscs, [:profile_id, :updated_at]
  end
end
