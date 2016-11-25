class AuthorizationService
  require "#{Rails.root}/lib/jwt_token"

  def initialize(headers = {})
    @headers = headers
  end

  def current_user
    puts authorization_header
    token = JsonWebToken.decode(authorization_header)
    return nil unless token
    User.find(token[:user_id])
  end

  def authorization_header
    token = @headers[:headers].env["HTTP_AUTHORIZATION"]
    token.split(' ').last if token.present?
  end
end
