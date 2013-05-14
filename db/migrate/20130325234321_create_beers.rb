class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :brewery_name
      t.string :beer_name
      t.text :content
      t.integer :profile_id

      t.timestamps
    end
  end
end
