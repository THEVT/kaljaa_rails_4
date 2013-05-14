class CreateBeercentrals < ActiveRecord::Migration
  def change
    create_table :beercentrals do |t|

      t.timestamps
    end
  end
end
