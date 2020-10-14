class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def index #still don't know If index action is necessary
        @users = User.all
    end

    def show
        user_set
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to doctors_path
        else
            render :new
        end
    end

    def edit
        user_set
    end

    private
    def user_set
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :location, :username, :email, :insurance, :password, :password_confirmation)
    end
end