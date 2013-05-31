class AddEventIdColumnToBlogs < ActiveRecord::Migration
  def up
		add_column :blogs, :event_id, :integer
  end

  def down
  end
end
