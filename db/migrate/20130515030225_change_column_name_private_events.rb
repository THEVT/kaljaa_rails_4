class ChangeColumnNamePrivateEvents < ActiveRecord::Migration
  def up
		rename_column :events, :private, :exclusive
  end

  def down
  end
end
