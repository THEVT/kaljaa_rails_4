class AddProfileIdColumnToActivitiesSecond < ActiveRecord::Migration
  def change
	add_column :activities, :profile_id, :integer
  end
end
