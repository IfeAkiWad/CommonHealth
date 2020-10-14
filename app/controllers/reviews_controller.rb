class ReviewsController < ApplicationController
    before_action :require_login
    before_action :set_doctor
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index  #This will return reviews for a specific doctor     
        @reviews = @doctor.reviews
    end

    def new #this action will only create a new review for a doctor who already exists
        @review = @doctor.reviews.new
    end

    def create
        @review = current_user.reviews.new(review_params) 
        @review.doctor = @doctor
            if @review.save
                redirect_to doctor_reviews_path(@doctor)
            else
                render :new
            end
    end

    def show
    end

    def edit
    end

    def update
        if @review.update(review_params)
            redirect_to doctor_reviews_path(@doctor)
        else
            render :edit
        end
    end

    def destroy
        @review.destroy
        redirect_to doctor_reviews_path(@doctor)

    end

    private

    def set_doctor
        @doctor = Doctor.find_by_id(params[:doctor_id])
    end

    def set_review
        @review = @doctor.reviews.find_by_id(params[:id])
    end

    def review_params
        params.require(:review).permit(:content)
    end

    def require_login
        if !current_user
            redirect_to login_path
        end 
    end
end