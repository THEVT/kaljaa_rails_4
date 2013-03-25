class AddIndexToServices < ActiveRecord::Migration
  def change
	add_index :services, [:profile_id, :updated_at]
  end
end
