require 'rails_helper'

RSpec.describe CarpoolGroup, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:shared_rides) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
