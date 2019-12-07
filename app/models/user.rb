class User < ApplicationRecord
  # Direct associations

  has_many   :shared_rides,
             :dependent => :destroy

  has_many   :preferred_trips,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
