class AddLaunchAdsressToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :launch_address, :string
  end
end
