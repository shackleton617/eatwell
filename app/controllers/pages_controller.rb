class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show, :search]

  def home
    @restaurants = Restaurant.all
  end

  def search

    if params[:query].present?
      @restaurants = Restaurant.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end

    redirect_to restaurants_path


  end

end
