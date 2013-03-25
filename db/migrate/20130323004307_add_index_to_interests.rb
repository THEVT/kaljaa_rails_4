class AddIndexToInterests < ActiveRecord::Migration
  def change
	add_index :interests, [:profile_id, :created_at]
  end
end
