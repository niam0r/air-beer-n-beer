class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.where.not(latitude: nil, longitude: nil)

    @markers = @breweries.map do |brewery|
      {
        lat: brewery.latitude,
        lng: brewery.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end
