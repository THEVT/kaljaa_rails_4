class AddColumnAdminToInvites < ActiveRecord::Migration
  def change
		add_column :invites, :admin, :integer
  end
end
