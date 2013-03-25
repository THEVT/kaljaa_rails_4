class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :content
      t.integer :porfile_id

      t.timestamps
    end
  end
end
