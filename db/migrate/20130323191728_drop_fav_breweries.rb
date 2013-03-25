class DropFavBreweries < ActiveRecord::Migration
  def up
	drop_table :fav_breweries
  end

  def down
  end
end
