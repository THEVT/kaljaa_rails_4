class CreateHonorablebeers < ActiveRecord::Migration
  def change
    create_table :honorablebeers do |t|
      t.text :content
      t.integer :profile_id

      t.timestamps
    end
  end
end
