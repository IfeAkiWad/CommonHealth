class SessionsController < ApplicationController
    def new

    end
  
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password]) #if this is true, then
      session[:user_id] = user.id #user's ID is stored as the value of session[:user_id].
    redirect_to
  end

  def destroy
    session.clear
  end
end