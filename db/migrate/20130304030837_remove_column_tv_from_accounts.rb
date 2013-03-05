class RemoveColumnTvFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :tv
  end

  def down
    add_column :accounts, :tv, :string
  end
end
