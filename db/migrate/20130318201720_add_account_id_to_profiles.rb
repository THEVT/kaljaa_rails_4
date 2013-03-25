class AddAccountIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :account_id, :integer
	add_index :profiles, [:account_id, :created_at]
  end

end
