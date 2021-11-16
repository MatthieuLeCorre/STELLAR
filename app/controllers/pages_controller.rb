class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @trips = Trip.all
    @trips_to_sort = @trips.sort_by { |trip| trip.created_at }
    @trips_good = @trips_to_sort.last(3)
  end

end
