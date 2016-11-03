class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_url
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :salt, :encrypted_password, :password_confirmation)
  end

end
