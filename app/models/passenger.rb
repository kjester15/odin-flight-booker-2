class Passenger < ApplicationRecord
  belongs_to :booking, dependent: :destroy
end
