class AddOriginLongitudeToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :origin_longitude, :float
  end
end
