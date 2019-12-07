class PreferredTrip < ApplicationRecord
  # Direct associations

  has_many   :shared_rides,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
