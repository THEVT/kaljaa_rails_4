class AddIndexToActivitiesSecond < ActiveRecord::Migration
  def change
	add_index :activities, [:account_id, :created_at]
  end
end
