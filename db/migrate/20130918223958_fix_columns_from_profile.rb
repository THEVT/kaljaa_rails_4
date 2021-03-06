class FixColumnsFromProfile < ActiveRecord::Migration
  def up
	 change_table :profiles do |t|
		t.rename :s1, :first_name
		t.rename :s2, :last_name
		t.rename :s3, :company
		t.rename :s4, :phone
		t.rename :s5, :website
		t.rename :s6, :email
		t.rename :s7, :gender
		t.rename :s8, :street
		t.string :city
		t.string :state
		t.integer :zipcode
    end
  end

  def down
  end
end
