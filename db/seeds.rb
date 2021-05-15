# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create({ code: "JFK", name: "John F. Kennedy International Airport", city: "New York City", country: "United States" })
Airport.create({ code: "SFO", name: "San Francisco International Airport", city: "San Francisco", country: "United States" })
Airport.create({ code: "TOR", name: "Toronto Pearson International Airport", city: "Toronto", country: "Canada" })
Airport.create({ code: "LAX", name: "Los Angeles International Airport", city: "Los Angeles", country: "United States" })
Airport.create({ code: "DXB", name: "Dubai International Airport", city: "Dubai", country: "United Arab Emirates" })
Airport.create({ code: "PEK", name: "Beijing Capital International Airport", city: "Beijing", country: "China" })
Airport.create({ code: "HND", name: "Tokyo Haneda Airport", city: "Tokyo", country: "Japan" })
Airport.create({ code: "CDG", name: "Charles de Gaulle Airport", city: "Ile de France", country: "France" }) 
Flight.create({ origin_airport_id: Airport.find(1).id, destination_airport_id: Airport.find(2).id, time: DateTime.now, duration: "2 hrs"  })
Flight.create({ origin_airport_id: Airport.find(8).id, destination_airport_id: Airport.find(5).id, time: DateTime.now, duration: "3 hrs"  })
Flight.create({ origin_airport_id: Airport.find(5).id, destination_airport_id: Airport.find(4).id, time: DateTime.now, duration: "5 hrs"  })
Flight.create({ origin_airport_id: Airport.find(8).id, destination_airport_id: Airport.find(7).id, time: DateTime.now, duration: "4.5 hrs" })
Flight.create({ origin_airport_id: Airport.find(1).id, destination_airport_id: Airport.find(1).id, time: DateTime.now, duration: "2 hrs"  })
Flight.create({ origin_airport_id: Airport.find(2).id, destination_airport_id: Airport.find(3).id, time: DateTime.now, duration: "3 hrs"  })

