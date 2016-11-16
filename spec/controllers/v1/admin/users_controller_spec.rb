require 'rails_helper'

RSpec.describe V1::Admin::UsersController, type: :controller do
  before(:each) do
    user = FactoryGirl.create(:user)
    controller.stub(:authorize_request) { user }
  end

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
      expect(JSON.parse(response.body).count >= 1)
    end
  end

  describe "POST #create" do
    it "creates resource with valid data" do
      user_params = FactoryGirl.attributes_for(:user)
      post :create, params: { user: user_params }
      expect(response.status).to eql(200)
    end

    it "render erros with invalid data" do
      user_params = FactoryGirl.attributes_for(:user, email: nil)
      post :create, params: { user: user_params }
      expect(response.status).to eql(422)
      expect(response.body).to include("can't be blank")
    end
  end
end
