class UsersController < ApplicationController

    def new
        @user = user.new
    end

    def index
        #is an index action necessary?
        @users = user.all
    end

    def show
        user_set
    end

    def create
        @user = user.new(user_params)
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
        redirect_to patietn_path(@user)
    end

    def destroy
        #is this similar to the destroy action in the sessions controller?

    end

    private
    def user_set
        @user = user.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :location, :username, :email, :insurance, :password_confirmation)
    end
end