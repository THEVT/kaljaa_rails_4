class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :profile_id
      t.integer :group_id
      t.string :name
      t.string :status
      t.integer :admin

      t.timestamps
    end
  end
end
