class AddIndexToBlogs < ActiveRecord::Migration
  def change
		add_index :blogs, [:profile_id, :created_at]
  end
end
