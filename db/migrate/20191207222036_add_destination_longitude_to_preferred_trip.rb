class AddDestinationLongitudeToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :destination_longitude, :float
  end
end
