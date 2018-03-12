class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_restaurant, only: [:show ]


  def index
    # Restaurant.near("lisbon", 20)

    if params[:query].present?
      @restaurants = Restaurant.search_by_any_word(params[:query])
      # @restaurants = Restaurant.where(sql_query, query: "%#{params[:query]}%")

    else
      @restaurants = Restaurant.all
    end


    if params[:place].present?
      @restaurants = @restaurants.near(params[:place], 0.5)
    end

    get_location
  end

  def show
    @review = Review.new
    @check_in = CheckIn.new
    @reviews = @restaurant.reviews.order(created_at: :desc)
     @markers =
      [{
        lat: @restaurant.latitude,
        lng: @restaurant.longitude#,
        #infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
  end



  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def restaurant_params
    params.require(:restaurant).permit(:address, :cuisine)
  end

  def get_location

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude

        # infoWindow: { content: render_to_string(partial: "/restaurants/map_box", locals: { restaurant: restaurant }) }
      }
    end
  end
end
