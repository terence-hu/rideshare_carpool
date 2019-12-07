class SharedRide < ApplicationRecord
  # Direct associations

  belongs_to :carpool_group,
             :counter_cache => true

  belongs_to :preferred_trip,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
