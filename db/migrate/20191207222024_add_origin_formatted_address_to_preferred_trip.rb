class AddOriginFormattedAddressToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :origin_formatted_address, :string
  end
end
