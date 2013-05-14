class AddIndexAgainToReviewbeers < ActiveRecord::Migration
  def change
	add_index :reviewbeers, [:profile_id, :created_at]
  end
end
