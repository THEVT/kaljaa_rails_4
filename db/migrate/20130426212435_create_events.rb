class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.integer :weekly
      t.string :day
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.text :description
      t.integer :private
      t.integer :major_event
      t.integer :profile_id

      t.timestamps
    end
  end
end
