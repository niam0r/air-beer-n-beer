class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :edit, :update, :destroy]

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

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      redirect_to brewery_path(@brewery)
    else
      render 'new'
    end
  end

  def show
    @markers = [{lat: @brewery.latitude, lng: @brewery.longitude}]

  end

  def edit
  end

  def update
    if @brewery.update(brewery_params)
      redirect_to breweries_path
    else
      render 'edit'
    end
  end

  def destroy
    @brewery.destroy
    redirect_to breweries_path
  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:id])
  end

  def brewery_params
    params.require(:brewery).permit(:name, :address)
  end
end
