class TripsController < ApplicationController
  def index
    if params[:query].present?
      @trips = Trip.where('planet LIKE ?', "%#{params[:query].capitalize}%")
      # à modifier
    else
      @trips = policy_scope(Trip).order(created_at: :desc)
    end
  end

  def show
    @trip = Trip.find(params[:id])
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
    @trip.save
    authorize @trip
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
    # @trip = Trip.find(params[:id])
  end

  def update
    # @trip.update(trip_params)
    # redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:planet, :gravity, :exit, :price_per_night,
                                 :transport_price, :spaceship, :description,
                                 :survival, :photo)
  end
end
