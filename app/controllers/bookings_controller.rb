class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    params[:passengers].to_i.times.each do
      @booking = Booking.new(flight_id: params[flight_id], passenger_id: Passenger.new(name: params[passenger[name]], email: params[passenger[email]]).id)
    end

    if @booking.save
      redirect_to new_booking_path
    else
      redirect_to flights_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passengers)
  end
end
