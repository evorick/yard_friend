class RentController < ApplicationController
  def yards
    @rents = Listing.all
  end

  def show
    @rents = listing.find(params[:id])
  end
end
