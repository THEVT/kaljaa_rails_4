class ChangeColumnNameTypeProfiles < ActiveRecord::Migration
  def up
	rename_column :profiles, :type, :profile_type
  end

  def down
  end
end
