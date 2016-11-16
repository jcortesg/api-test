class V1::Admin::UsersController < V1::Admin::BaseController
  # GET /v1/users
  def index
    render json: User.all
  end

  #POST /v1/admin/create
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation)
  end
end
