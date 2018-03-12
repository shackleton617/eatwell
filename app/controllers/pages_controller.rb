class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show, :search]

  def home
    @restaurants = Restaurant.all
  end

  def about
    @user = current_user
  end



end
