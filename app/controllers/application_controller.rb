class ApplicationController < ActionController::Base
    helper_method :current_user #accessible in the views files
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by_id(session[:user_id])
        end
    end 

    helper_method :location_specialty
    def location_specialty
        @doctors = Doctor.all
        if !params[:location].blank?
            @doctors = Doctor.by_location(params[:location]) 
        elsif !params[:specialty].blank?
            @doctors = Doctor.by_specialty(params[:specialty])
        end
    end
end
