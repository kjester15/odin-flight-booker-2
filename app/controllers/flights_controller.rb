class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @departure_airports = Flight.all.map { |flight| [flight.departure_airport.code, flight.departure_airport_id] }.uniq.sort
    @arrival_airports = Flight.all.map { |flight| [flight.arrival_airport.code, flight.arrival_airport_id] }.uniq.sort
    @passengers = [[1, 1], [2, 2], [3, 3], [4, 4]]
  end
end

private

def flight_params
  params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure_date, :passengers)
end