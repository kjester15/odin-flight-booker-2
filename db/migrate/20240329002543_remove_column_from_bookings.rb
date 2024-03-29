class RemoveColumnFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :passenger_id
  end
end
