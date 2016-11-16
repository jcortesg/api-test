module ControllerMacros
  def login_user
    before(:each) do
      user = FactoryGirl.create(:user)
      token = JsonWebToken.encode(user_id: user.id)
    end
  end
end
