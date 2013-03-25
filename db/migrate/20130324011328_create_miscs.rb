class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.text :content
      t.integer :profile_id

      t.timestamps
    end
  end
end
