class AddDestinationLatitudeToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :destination_latitude, :float
  end
end
