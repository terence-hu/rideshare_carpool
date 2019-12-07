class AddOriginLatitudeToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :origin_latitude, :float
  end
end
