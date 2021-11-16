class TripsController < ApplicationController
  def index
    @trips = policy_scope(Trip).order(created_at: :desc)
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    authorize @trip
    @trip = Trip.new(trip_params)
    @trip.save
    redirect_to trips_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:planet, :gravity, :exit, :price_per_night,
                                 :transport_price, :spaceship, :description,
                                 :survival, :photo)
  end
end
