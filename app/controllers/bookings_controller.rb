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
    @booking.user = current_user
    if @booking.save
      redirect_to pages_path
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
    params.require(:booking).permit(:check_in, :check_out)
  end
end
