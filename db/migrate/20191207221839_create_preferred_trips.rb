class CreatePreferredTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :preferred_trips do |t|
      t.string :origin
      t.string :destination
      t.time :earliest_departure_time
      t.time :latest_departure_time
      t.date :date
      t.integer :max_radius
      t.integer :user_id
      t.boolean :join

      t.timestamps
    end
  end
end
