class ApplicationController < ActionController::Base
    def current_user
        @user ||= user.find_by_id(session[:user_id])
    end
end
