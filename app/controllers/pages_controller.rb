class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    @restaurants = Restaurant.all
  end

  def user
    @user = current_user
  end
end
