class CreateReviewbeers < ActiveRecord::Migration
  def change
    create_table :reviewbeers do |t|
      t.string :brewery_name
      t.string :beer_name
      t.integer :grade
      t.string :type
      t.text :content
      t.integer :smell
      t.integer :look
      t.integer :feel
      t.integer :taste
      t.integer :personal_brew

      t.timestamps
    end
  end
end
