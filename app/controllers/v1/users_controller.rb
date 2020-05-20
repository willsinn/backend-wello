class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    user = User.find(params[:id])
    render json: user
  end
  def create
    user = User.create(email:user_params[email], encrypted_password:user_params[encrypted_password])

    render json: user
  end
  private
    def user_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
end
