class ChangeGradeToStringReviewbeers < ActiveRecord::Migration
  def up
	change_column :reviewbeers, :grade, :string
  end

  def down
  end
end
