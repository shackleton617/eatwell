class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @offers = Offer.all
    @redemption = Redemption.new

  end

end
