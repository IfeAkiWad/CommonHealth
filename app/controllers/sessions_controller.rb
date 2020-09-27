class SessionsController < ApplicationController
    def new

    end
    
    def create
        @patient = Patient.find_by(name: params[:patient][:name])
        return head(:forbidden) unless @user.authenticate(params[:patient][:password])
        session[:user_id] = @user.id
      end
end]