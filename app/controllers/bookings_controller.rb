class BookingsController < ApplicationController

  # def index
  #   @bookings = policy_scope(Booking).order(created_at: :desc)
  # end

  def show
    @booking = Booking.find(params[:id])
    @trip = @booking.trip
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
    @booking.name = "Trip to #{@trip.planet}"
    @booking.trip = @trip
    @booking.user_id = @user.id
    @booking.price = (((@booking.end_date - @booking.start_date) * @trip.price_per_night) + @trip.transport_price) * @booking.number_of_passengers
    @booking.save
    redirect_to booking_payment_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # authorize @booking
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  def payment
    @booking = Booking.find(params[:booking_id])
  end
  # regarder redirect to avec notice

  def payment_confirm
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :start_date, :end_date, :price, :number_of_passengers)
  end
end
