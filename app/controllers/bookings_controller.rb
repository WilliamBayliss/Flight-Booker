class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @passenger_count = params[:passengers].to_i
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flight = Flight.find(booking_params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.create(booking_params[:passenger_attributes]) }

    if @booking.save
      flash[:notice] = "Your flight is booked!"
      redirect_to booking_path(@booking)
    else
      flash[:alert] = "Something went wrong!"
      render 
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end

end
