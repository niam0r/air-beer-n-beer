class AddCoordinatesToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :latitude, :float
    add_column :breweries, :longitude, :float
  end
end
