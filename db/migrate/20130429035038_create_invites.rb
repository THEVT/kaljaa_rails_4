class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :profile_id
      t.integer :event_id
      t.string :status

      t.timestamps
    end
  end
end
