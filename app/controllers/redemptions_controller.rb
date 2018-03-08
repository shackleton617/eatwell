class RedemptionsController < ApplicationController

  def create

    @offer = Offer.find(params[:offer_id])
    @redemption = Redemption.new
    @redemption.user = current_user
    @redemption.offer = @offer
    @redemption.save


    new_value = current_user.token_wallet - @offer.token_value

    current_user.update(token_wallet: new_value)

    redirect_to dashboard_path


  end
end
