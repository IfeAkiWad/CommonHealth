class ReviewsController < ApplicationController
    before_action :require_login
    before_action :set_doctor
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        # binding.pry
        # @user = User.find_by_id(params[:user_id])
        # set_doctor        
        @reviews = @doctor.reviews
            # Review.find_by_doctor_id(params[:doctor_id]) if params[:doctor_id]
    end

    def new #this action will only create a new review for a doctor already exists
        @review = @doctor.reviews.new
    end

    def create
        # binding.pry
        @review = Review.create(review_params)
            if @review.save
                redirect_to doctor_review_path(@doctor, @review)
            else
                render :new
            end
    end

    def show
    end

    def edit
    end

    def update
        @review.update(review_params)
    end

    def destroy
        @review.destroy

    end

    private

    def set_doctor
        @doctor = Doctor.find_by_id(params[:doctor_id])
    end

    def set_review
        @review = @doctor.reviews.find_by_id(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :doctor_id, :user_id)
    end

    def require_login
        if !current_user
            redirect_to login_path
        end 
    end
end