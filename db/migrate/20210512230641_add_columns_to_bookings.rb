class AddColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :flight, null: false, foreign_key: true
    add_reference :bookings, :passenger, null: false, foreign_key: true
  end
end
