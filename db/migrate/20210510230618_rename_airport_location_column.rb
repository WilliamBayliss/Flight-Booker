class RenameAirportLocationColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :airports, :location, :code
  end
end
