class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.text :content
      t.integer :profile_id

      t.timestamps
    end
  end
end
