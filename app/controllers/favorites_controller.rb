class FavoritesController < ApplicationController
  before_action :set_restaurant

  def index
    @favorite = Favorite.all
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @favorite = Favorite.new
    @favorite.restaurant = @restaurant
    @favorite.user = current_user
    byebug
    if @favorite.save
      respond_to do |format|
        format.html { redirect_to restaurants }
        format.js  # <-- will render `app/views/favorites/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end



    # if Favorite.create(favorited: @restaurant, user: current_user)
    #   redirect_to @restaurant, notice: 'Restaurant has been favorited'
    # else
    #   redirect_to @restaurant, alert: 'Something went wrong...'
    # end

  def destroy
    Favorite.where(favorited_id: @restaurant.id, user_id: current_user.id).first.destroy
    redirect_to @restaurant, notice: 'Restaurant is no longer in favorites'
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
