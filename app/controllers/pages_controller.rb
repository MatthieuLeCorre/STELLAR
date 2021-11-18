class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @trips = Trip.all
    @trips_to_sort = @trips.sort_by { |trip| trip.created_at }
    @trips_good = @trips_to_sort.last(3)
  end

  def dashboard
    @trips = Trip.where(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
    # @bookings = policy_scope(Booking).order(created_at: :desc)
    # @trips = policy_scope(Trip).order(created_at: :desc)
  end
end
