class V1::UsersController < ApplicationController
  # GET /v1/users
  def index
    render json: User.all
  end
end
