class AddDestinationFormattedAddressToPreferredTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :preferred_trips, :destination_formatted_address, :string
  end
end
