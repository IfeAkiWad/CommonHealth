class SessionsController < ApplicationController
  def new

  end
  
  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password]) #if this is true, then
      session[:user_id] = user.id #user's ID is stored as the value of session[:user_id].
      redirect_to doctors_path
    else
      render :new
    end
  end

  def omniauth
  end

  def destroy
    session.clear
    redirect_to '/login'
  end
end