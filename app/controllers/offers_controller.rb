class OffersController < ApplicationController
  def index
    @offers = Offer.all
    @redemption = Redemption.new

  end


end
