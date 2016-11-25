module AuthHelpers
  def authWithUser (user)
    request.headers['TOKEN'] = "#{JsonWebToken.encode(user_id: user.id)}"
  end
end
