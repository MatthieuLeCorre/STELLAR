class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @user = current_user
    @trip = Trip.find(params[:trip_id])
    @booking.trip = @trip
    @booking.user_id = @user.id
    @booking.save
    redirect_to bookings_path(@trip)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to bookings_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  def payment
    @booking = Booking.find(params[:booking_id])
  end
  # regarder redirect to avec notice

  def payment_confirm
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :start_date, :end_date, :price)
  end
end
