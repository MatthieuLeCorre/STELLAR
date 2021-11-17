class TripsController < ApplicationController
  def index
    if params[:query].present?
      @trips = policy_scope(Trip).where(planet: params[:query].capitalize)

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
    @trip.user_id = current_user.id
    @trip.save
    authorize @trip
    if @trip.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to dashboard_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to dashboard_path
  end

  private

  def trip_params
    params.require(:trip).permit(:planet, :gravity, :exit, :price_per_night,
                                 :transport_price, :spaceship, :description,
                                 :survival, :photo)
  end
end
