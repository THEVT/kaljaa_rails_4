class AddIndexToFavbeer < ActiveRecord::Migration
  def change
	add_index :favbreweries, [:profile_id, :updated_at]
	add_index :favbeers, [:profile_id, :updated_at]
  end
end
