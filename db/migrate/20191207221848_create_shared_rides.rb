class CreateSharedRides < ActiveRecord::Migration[5.1]
  def change
    create_table :shared_rides do |t|
      t.integer :user_id
      t.integer :preferred_trip_id
      t.integer :carpool_group_id

      t.timestamps
    end
  end
end
