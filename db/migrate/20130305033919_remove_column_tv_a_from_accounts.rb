class RemoveColumnTvAFromAccounts < ActiveRecord::Migration
	  def change
		remove_column :accounts, :tv
	  end

end
