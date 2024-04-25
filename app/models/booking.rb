class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers
  accepts_nested_attributes_for :passengers, reject_if: :all_blank, allow_destroy: true
end
