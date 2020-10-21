class SessionsController < ApplicationController
  def new

  end
  
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password]) #if this is true, then
      session[:user_id] = user.id #user's ID is stored as the value of session[:user_id].
      redirect_to doctors_path
    else
      render :new
    end
  end

  def omniauth
    # binding.pry
    user = User.from_omniauth(auth)
    # binding.pry
    if user.valid?
      session[:user_id] = user.id
      redirect_to doctors_path
    else
      redirect_to login_path
    end

  end

  def destroy
    session.clear
    redirect_to login_path
  end

  protected
  def auth #credentials (Client ID and Client secret)
    request.env['omniauth.auth']
  end
end