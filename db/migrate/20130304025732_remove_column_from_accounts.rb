class RemoveColumnFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :enabled
  end

  def down
    add_column :accounts, :enabled, :string
  end
end
