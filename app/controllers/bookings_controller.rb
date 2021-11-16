class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @trip = Trip.find[:trip_id]
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @trip = Trip.find[:trip_id]
    @booking.trip = @trip
    @booking.save
    redirect_to bookings_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
