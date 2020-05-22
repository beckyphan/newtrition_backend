class UsersController < ApplicationController

  def create
    new_user = User.new(username: params[username], password: params[password])
    binding.pry
    if new_user.save!
      session[:user_id] = new_user.id
      redirect_to '/'
    else
      flash.now[:alert] = "Please try again."
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

end
