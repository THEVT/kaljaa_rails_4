class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.integer :album_id
      t.integer :profile_pic

      t.timestamps
    end
  end
end
