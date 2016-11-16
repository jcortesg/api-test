require 'rails_helper'

RSpec.describe V1::SessionsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, params:{ id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

end
