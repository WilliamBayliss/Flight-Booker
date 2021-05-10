class AddColumnsToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :origin_airport_id, :integer 
    add_column :flights, :destination_airport_id, :integer
    add_column :flights, :time, :datetime
    add_column :flights, :duration, :string
  end
end
