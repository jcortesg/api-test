class ApplicationController < ActionController::API
  include ActionController::Serialization
  before_action :authenticate_request
  attr_reader :current_user

  private
  def authenticate_request
    authorization_service = AuthorizationService.new(headers: request.headers)
    current_user = authorization_service.current_user
    render json: { error: 'Not Authorized' }, status: 401 unless current_user
  end
end
