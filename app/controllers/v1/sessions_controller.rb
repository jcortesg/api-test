class V1::SessionsController < ApplicationController
  skip_before_action :authorize_request

  def create
    user = User.find_by(email: params[:email])
    if !user.nil? && user.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: user.id)
      render json: { token: token }
    else
      render json: { error: "authentication error" }, status: :unauthorized
    end
  end

  def destroy
  end
end
