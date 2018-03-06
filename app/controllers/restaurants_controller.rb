class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_restaurant, only: [:show]


  def index
    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)


    unless params[:address].blank?
       @restaurants = @restaurants.near(params[:address], 2)
    end

    unless params[:cuisine].blank?
       @restaurants = @restaurants.where(cuisine: params[:cuisine].capitalize)
    end


    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude#,
        #infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
  end
end


  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def restaurant_params
    params.require(:restaurant).permit(:address, :cuisine)
  end
end
