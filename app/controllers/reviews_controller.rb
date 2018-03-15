class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    if user_signed_in?
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      @review.user = current_user
      @check_in = CheckIn.new
      if @review.save
        respond_to do |format|
          format.html { redirect_to restaurant_path(@restaurant) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { render 'restaurants/show' }
          format.js  # <-- idem
        end
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
