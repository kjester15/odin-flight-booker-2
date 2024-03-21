class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = EventUser.new(booking_params)

    if @booking.save
      # redirect_to events_path
    else
      # redirect_to events_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passengers)
  end
end
