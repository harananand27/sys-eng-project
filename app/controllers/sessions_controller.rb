class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to citations_url
    end
  end

  def create
    user = User.where(email: params[:email]).first
    if user
      session[:user_id] = user.id
      redirect_to citations_url
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
