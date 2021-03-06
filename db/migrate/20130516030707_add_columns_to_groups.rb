class AddColumnsToGroups < ActiveRecord::Migration
  def change

		add_column :groups, :title, :string		
		add_column :groups, :exclusive, :integer
		add_column :groups, :visible, :integer
		add_column :groups, :street, :string
		add_column :groups, :city, :string
		add_column :groups, :state, :string
		add_column :groups, :zipcode, :integer
		add_column :groups, :country, :string
		add_column :groups, :description, :text
		add_column :groups, :profile_id, :integer
  end
end
