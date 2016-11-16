class V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
  end

  def destroy
  end
end
