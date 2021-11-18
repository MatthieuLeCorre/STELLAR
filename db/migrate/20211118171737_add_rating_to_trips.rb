class AddRatingToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :rating, :integer
  end
end
