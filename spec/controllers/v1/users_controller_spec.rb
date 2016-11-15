require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do

  describe "GET #index" do
    before do
      @user = FactoryGirl.create(:user)
      get :index
    end
    it "returns the correct status" do
      expect(response.status).to eql 200
    end
    it 'returns the data in the body' do
      expect(response.body).to include(@user.email)
      expect(JSON.parse(response.body).count).to eql(1)
    end
  end
end
