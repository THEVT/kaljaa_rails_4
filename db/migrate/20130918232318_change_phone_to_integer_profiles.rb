class ChangePhoneToIntegerProfiles < ActiveRecord::Migration
  def up
	change_column :profiles, :phone, :integer
  end

  def down
  end
end
