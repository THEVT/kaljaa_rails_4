class AddPasswordDigestToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :password_digest, :string
	remove_column :accounts, :pw
  end
end
