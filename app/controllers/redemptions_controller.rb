class RedemptionsController < ApplicationController



  def create

    @offer = Offer.find(params[:offer_id])


    if current_user.token_wallet >= @offer.token_value
    @redemption = Redemption.new
    @redemption.user = current_user
    @redemption.offer = @offer
    @redemption.save
    flash[:notice] = "Enjoy your offer!"

    new_value = current_user.token_wallet - @offer.token_value

    current_user.update(token_wallet: new_value)

    UserMailer.creation_confirmation(@redemption).deliver_now
      redirect_to dashboard_path

  else

    flash[:alert] = "You dont have enough points for #{@offer.company}"
    redirect_to offers_path
  end


  end
end
