class CarpoolGroup < ApplicationRecord
  # Direct associations

  has_many   :shared_rides,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
