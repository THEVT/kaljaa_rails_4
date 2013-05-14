class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :profile_id
      t.integer :word_on_the_street

      t.timestamps
    end
  end
end
