class AddCreatorToInvites < ActiveRecord::Migration
  def change
		add_column :invites, :creator, :integer
  end
end
