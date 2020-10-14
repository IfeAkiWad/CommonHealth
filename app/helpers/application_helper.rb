module ApplicationHelper
    def render_navigation
        if session[:user_id]
            link_to "logout", '/logout', method: 'delete' 
        else
            link_to("login", '/login') + " " + link_to("sign up", '/signup')
        end
    end

   def render_user_home
        @user = current_user
        if current_user
            link_to "Home", user_path(@user)
        end
    end
end
