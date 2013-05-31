class AddColumnToBlogs < ActiveRecord::Migration
  def up
		add_column :blogs, :group_id, :integer
  end

  def down
  end
end
