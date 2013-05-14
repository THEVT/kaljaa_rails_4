class AddIndexToArticles < ActiveRecord::Migration
  def change
		add_index :articles, [:profile_id, :created_at]
  end
end
