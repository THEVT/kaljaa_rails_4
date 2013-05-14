class ChangeColumnNameTyeInReviewbeers < ActiveRecord::Migration
  def up
	rename_column :reviewbeers, :type, :beer_type
  end

  def down
  end
end
