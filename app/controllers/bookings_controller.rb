class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create]

  def index
    # Offers that the current user has made and have been booked by others
    @my_offers_booked_by_others = current_user.offers.joins(:bookings).distinct

    # Offers that the current user has booked
    @my_booked_offers = current_user.bookings.includes(:offer).map(&:offer)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: 'Booking was successful!'
    else
      render :new
    end
  end

  def show
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:offer_id, :check_in, :check_out)
  end
end
