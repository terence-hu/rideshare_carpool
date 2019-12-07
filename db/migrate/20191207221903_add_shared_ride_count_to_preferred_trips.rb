class AddSharedRideCountToPreferredTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :shared_rides_count, :integer
  end
end
