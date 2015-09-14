class RentController < ApplicationController
  def yards
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
