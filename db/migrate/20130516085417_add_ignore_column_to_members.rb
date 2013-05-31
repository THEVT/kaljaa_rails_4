class AddIgnoreColumnToMembers < ActiveRecord::Migration
  def change
		add_column :members, :ignore, :integer
  end
end
