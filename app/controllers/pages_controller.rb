class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :privacy]

  def home
    @restaurants = Restaurant.all
  end

  def about
    @user = current_user
  end

  def privacy

  end

end
