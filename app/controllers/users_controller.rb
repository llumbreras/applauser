class UsersController < ApplicationController
  respond_to :html

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @applauses = @user.applauses
  end

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)
    sign_in(@user)
    respond_with @user, location: root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

