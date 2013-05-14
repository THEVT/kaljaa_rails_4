class AddIndexToBeers < ActiveRecord::Migration
  def change
	add_index :beers, [:profile_id, :created_at]
  end
end
