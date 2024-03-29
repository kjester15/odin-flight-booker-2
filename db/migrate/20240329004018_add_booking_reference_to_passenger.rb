class AddBookingReferenceToPassenger < ActiveRecord::Migration[7.1]
  def change
    add_reference :passengers, :flight, foreign_key: true
  end
end
