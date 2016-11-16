class AuthorizationService
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
    @headers['Authorization'].split(' ').last if @headers['Authorization'].present?
  end
end
