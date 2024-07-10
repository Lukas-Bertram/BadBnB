class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create index]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.save
    redirect_to offer_path(@offer)
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
