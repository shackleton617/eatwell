class UsersController < ApplicationController
  before_action :user, only: [:dashboard]
  def dashboard

  end

  def user
    @user = current_user
  end


private
  def user_params
  params.require(:user).permit(:photo)
  end

end
