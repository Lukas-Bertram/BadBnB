class BookingsController < ApplicationController

  def show
    @booking = Booking.find(booking_params)
  end

  private

  def booking_params
    require.params(:booking).permit(:check_in, :ckeck_out)
  end
end
