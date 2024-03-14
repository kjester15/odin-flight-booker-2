class UpdateTableColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :departure_airport_id, :departure_airport
    rename_column :flights, :arrival_airport_id, :arrival_airport
  end
end
