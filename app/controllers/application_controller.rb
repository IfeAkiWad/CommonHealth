class ApplicationController < ActionController::Base
    helper_method :current_user #accessible in the views files
    helper_method :this_doctor

    def this_doctor
        # binding.pry
        @doctor = Doctor.find_by_name(params[:name])
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by_id(session[:user_id])
        end
    end
end
