class AddColumnsToAirports < ActiveRecord::Migration[6.1]
  def change
    add_column :airports, :name, :string
    add_column :airports, :city, :string
    add_column :airports, :country, :string
  end
end
