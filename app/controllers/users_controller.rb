class UsersController < ApplicationController
	def index
    @users = User.all
    render json: @users
  end
# Not sure if I want index to be around or rather I don't think we want this to ever be called
  def new
    @user = User.new
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :password, :password_confirmation)
  end
end