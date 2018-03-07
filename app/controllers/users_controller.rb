class UsersController < ApplicationController

  def checked
    #id= ..........
    @restaurant = Restaurant.find(id)
    @points = @restaurant.calculate_points


    current_user.token_wallet = @points
    current_user.save
  end
end
