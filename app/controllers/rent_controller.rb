class RentController < ApplicationController
  def yards
    @listings = Listing.all.order(:name)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def name
    @listing = Listing.find(params[:name])
  end
end
