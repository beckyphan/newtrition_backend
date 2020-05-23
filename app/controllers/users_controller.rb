class UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def create
    new_user = User.new(username: params[:username], password: params[:password], dri_id: 1)
    existing_user = User.find_by(username: params[:username])
    if new_user.save
      render json: UserSerializer.new(new_user), status: :accepted
    elsif existing_user && existing_user.authenticate(params[:password])
      render json: UserSerializer.new(existing_user), status: :accepted
    else
      render json: {}, status: :unauthorized
    end

  end

  private
  def user_params
    params.permit(:username, :password)
  end

end
