require 'rails_helper'

RSpec.describe SharedRide, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:carpool_group) }

    it { should belong_to(:preferred_trip) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
