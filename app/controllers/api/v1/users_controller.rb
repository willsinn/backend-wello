class API::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = User.find(params[:id])
    render json: user
  end
  def create
    user = User.create(user_params)
    render json: user
  end
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
end
