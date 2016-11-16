require 'rails_helper'

RSpec.describe V1::Admin::TripsController, type: :controller do

  describe "GET #index" do
    before do
      @trip = FactoryGirl.create(:trip)
      get :index
    end

    it "returns the correct status" do
      expect(response.status).to eql 200
    end

    it 'returns the data in the body' do
      expect(response.body).to include(@trip.name)
      expect(JSON.parse(response.body).count).to eql(1)
    end
  end

  describe "POST #create" do
    it "creates resource with valid data" do
      trip_params = FactoryGirl.attributes_for(:trip)
      post :create, params: { trip: trip_params }
      expect(response.status).to eql(200)
    end

    it "render erros with invalid data" do
      user_params = FactoryGirl.attributes_for(:trip, date: nil)
      post :create, params: { trip: trip_params }
      expect(response.status).to eql(422)
      expect(response.body).to include("can't be blank")
    end
  end
end
