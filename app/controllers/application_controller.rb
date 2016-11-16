class ApplicationController < ActionController::API
  include ActionController::Serialization
  before_action :authenticate_request
  attr_reader :current_user

  private
  def authenticate_request
    puts "Authorize..."
    puts request.headers
  end
end
