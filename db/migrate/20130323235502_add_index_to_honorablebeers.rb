class AddIndexToHonorablebeers < ActiveRecord::Migration
  def change
	add_index :honorablebeers, [:profile_id, :updated_at]
  end
end
