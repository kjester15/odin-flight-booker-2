class Booking < ApplicationRecord
  belongs_to :flights
  belongs_to :passengers
end
