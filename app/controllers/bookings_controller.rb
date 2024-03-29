class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      redirect_to new_booking_path, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers.all
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email, :booking_id])
  end
end
