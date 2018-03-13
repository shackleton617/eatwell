class UsersController < ApplicationController
  before_action :user, only: [:dashboard]


  def checked
    @restaurant = Restaurant.find(id)
    @points = @restaurant.calculate_points

    current_user.token_wallet += @points

    current_user.save

  end

  def dashboard

  end

  def favorites

  end

  def user
    @user = current_user
  end


private
  def user_params
  params.require(:user).permit(:email, :photo, :first_name, :last_name)
  end

end
