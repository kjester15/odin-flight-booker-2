class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false, foreign_key: {to_table: :airports}
      t.references :arrival_airport, null: false, foreign_key: {to_table: :airports}
      t.datetime :departure_date, null: false
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
