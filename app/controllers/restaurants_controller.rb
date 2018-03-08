class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_restaurant, only: [:show]
  before_action :get_location, only: [:index]


  def index
    if params[:query].present?
        sql_query = " \
        restaurants.name @@ :query \
        OR restaurants.cuisine @@ :query \
        OR restaurants.location @@ :query \
        OR restaurants.address @@ :query \
        "
      @restaurants = Restaurant.search_by_any_word(params[:query])
    else
      @restaurants = Restaurant.all
    end
  end

  def get_location
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
        lng: restaurant.longitude

        # infoWindow: { content: render_to_string(partial: "/restaurants/map_box", locals: { restaurant: restaurant }) }
      }



  end
end


  def show
    @review = Review.new
    @check_in = CheckIn.new
  end



  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def restaurant_params
    params.require(:restaurant).permit(:address, :cuisine)
  end
end
