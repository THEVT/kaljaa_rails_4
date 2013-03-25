class AddIndexToAbouts < ActiveRecord::Migration
  def change
	add_index :abouts, [:profile_id, :updated_at]
  end
end
