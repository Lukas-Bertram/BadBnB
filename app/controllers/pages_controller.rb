class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    # Offers that the current user has made and have been booked by others
    @my_offers_booked_by_others = current_user.offers.joins(:bookings).distinct

    # Offers that the current user has booked
    @my_booked_offers = current_user.bookings.includes(:offer).map(&:offer)
  end

end
