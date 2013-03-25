class CreateFavbeers < ActiveRecord::Migration
  def change
    create_table :favbeers do |t|
      t.string :b1
      t.string :b2
      t.string :b3
      t.string :b4
      t.string :b5
      t.string :b6
      t.string :b7
      t.string :b8
      t.string :b9
      t.string :b10
      t.integer :profile_id

      t.timestamps
    end
  end
end
