class AddSharedRideCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :shared_rides_count, :integer
  end
end
