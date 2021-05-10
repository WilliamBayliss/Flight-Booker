class Flight < ApplicationRecord
    belongs_to :destination_airport, inverse_of: :arriving_flights, class_name: "Airport"
    belongs_to :origin_airport, inverse_of: :departing_flights, class_name: "Airport"
end
