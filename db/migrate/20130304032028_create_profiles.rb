class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :wall
      t.integer :ts
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4
      t.string :s5
      t.string :s5
      t.string :s6
      t.string :s7
      t.string :s8

      t.timestamps
    end
  end
end
