class CheckInsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    if user_signed_in?
      @restaurant = Restaurant.find(params[:restaurant_id])
      @check_in = CheckIn.new
      @check_in.user = current_user
      @check_in.restaurant = @restaurant
      @check_in.save

      @points = @restaurant.calculate_points
      current_user.token_wallet = 0 unless current_user.token_wallet
      current_user.token_wallet += @points
      current_user.save
    end
      # redirect_to dashboard_path
end
end
