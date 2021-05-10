class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |airport| [airport.name, airport.id] }
  end

  def show
    @flight = Flight.find(params[:id])
  end
end