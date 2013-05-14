class AddIndexToReviewbeers < ActiveRecord::Migration
  def change
	add_column :reviewbeers, :profile_id, :integer
  end
end
