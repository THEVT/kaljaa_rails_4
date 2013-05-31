class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :profile_id
      t.integer :event_id
      t.integer :group_id
      t.integer :article_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
