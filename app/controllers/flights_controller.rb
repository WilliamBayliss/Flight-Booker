class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{ |airport| [airport.name, airport.id] }
    @dates = Flight.pluck(:time).map{ |d| d.strftime("%d/%m/%Y") }

    if params[:from_airport] && params[:to_airport]
      @flights = Flight.where(origin_airport: params[:from_airport], destination_airport: params[:to_airport])
    else
      @flights = Flight.all
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end
end