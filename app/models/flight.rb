class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def departure_date_formatted
    departure_date.strftime("%m/%d/%Y")
  end

  def self.get_flight_dates
    flight_dates = Flight.find_by_sql("select distinct departure_date from flights order by departure_date asc")
  end
end
