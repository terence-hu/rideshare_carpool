class AddSharedRideCountToCarpoolGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :carpool_groups, :shared_rides_count, :integer
  end
end
