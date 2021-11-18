class TripsController < ApplicationController
  def index
    if params[:query].present?
      @trips = policy_scope(Trip).search_planet_and_description(params[:query])
    else
      @trips = policy_scope(Trip).order(created_at: :desc)
    end
    if params[:spaceship].present?
      @trips = Trip.search_spaceship(params[:spaceship])
    end
    if params[:survival].present?
      @trips = @trips.select { |trip| trip.survival >= params[:survival].to_i }
    end
    if params[:price_per_night].present?
    @trips = @trips.select { |trip| trip.price_per_night <= params[:price_per_night].to_i }
    end
    @markers = @trips.geocoded.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        info_window: render_to_string(partial: "info_window", locals: { trip: trip })
      }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @user = current_user
    @booking = Booking.new
  end

  def new
    @trip = Trip.new
    authorize @trip
    @spaceships = ["Space X Falcon 9", "Space X Falcon Heavy", "Ariane 5",
                   "NASA Orion Spacecraft", "NASA Atlantis Spacecraft", "Angara",
                   "Starship SN15", "Proton"]
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip
    @trip.user_id = current_user.id
    @trip.save
    if @trip.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    authorize @trip
  end

  def update
    @trip = Trip.find(params[:id])
    authorize @trip
    @trip.update(trip_params)
    redirect_to dashboard_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    authorize @trip
    @trip.destroy
    redirect_to dashboard_path
  end

  private

  def trip_params
    params.require(:trip).permit(:planet, :gravity, :exit, :price_per_night,
                                 :transport_price, :spaceship, :description,
                                 :survival, :launch_address, :photo)
  end
end
