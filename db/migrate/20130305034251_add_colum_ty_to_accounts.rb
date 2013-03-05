class AddColumTyToAccounts < ActiveRecord::Migration
  def change
	add_column :accounts, :ty, :string
  end
end
