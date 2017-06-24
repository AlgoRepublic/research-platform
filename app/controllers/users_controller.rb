class UsersController < ApplicationController
  
  def index
  end

  def update_data
    user = User.new(user_params)
    user.password = "password"
    user.save!
    redirect_to notify_user_users_path, :flash => { :success => "User success" }
  end

  def notify_user
  end

  def profile
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit!
  end

end
