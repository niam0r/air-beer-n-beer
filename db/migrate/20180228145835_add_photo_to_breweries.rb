class AddPhotoToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :photo, :string
  end
end
