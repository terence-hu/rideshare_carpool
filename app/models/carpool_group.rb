class CarpoolGroup < ApplicationRecord
  # Direct associations

  has_many   :shared_rides,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :shared_rides,
             :source => :user

  # Validations

end
