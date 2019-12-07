require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:shared_rides) }

    it { should have_many(:preferred_trips) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
