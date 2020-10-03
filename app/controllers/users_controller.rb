class UsersController < ApplicationController
    before_action :require_login

    def new
        @user = User.new
    end

    def index
        #is an index action necessary?
        @users = User.all
    end

    def show
        user_set
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        user_set
    end

    def update
        user_set
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        #is this similar to the destroy action in the sessions controller?

    end

    private
    def user_set
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :location, :username, :email, :insurance, :password, :password_confirmation)
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id #Unless the session includes :user_id, we return an error
    end
end