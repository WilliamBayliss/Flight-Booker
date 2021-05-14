class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @passengers = params[:passengers].to_i
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

end
