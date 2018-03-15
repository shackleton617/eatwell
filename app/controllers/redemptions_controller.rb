class RedemptionsController < ApplicationController



  def create

    @offer = Offer.find(params[:offer_id])

    @current_token_wallet = current_user.token_wallet
    if @current_token_wallet >= @offer.token_value
      @redemption = Redemption.new
      @redemption.user = current_user
      @redemption.offer = @offer
      @redemption.save

      new_value = current_user.token_wallet - @offer.token_value

      current_user.update(token_wallet: new_value)

      UserMailer.creation_confirmation(@redemption).deliver_now
        # redirect_to dashboard_path

      # redirect_to offers_path
    end


  end
end
