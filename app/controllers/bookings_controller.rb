class BookingsController < ApplicationController
  def index

  end

  def new
  end

  def booking_params
    require.params(:booking).permit(:check_in, :ckeck_out)
  end
end
