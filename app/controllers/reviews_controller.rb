class ReviewsController < ApplicationController
    before_action :require_login

    def index
        # binding.pry
        if params[:doctor_id]
            @reviews = Review.find_by_doctor_id(params[:doctor_id]).reviews
        end
    end

    def new #this action will only create a new review if a doctor already exists
        @doctor = Doctor.find_by_id(params[:doctor_id])
        @review = @doctor.reviews.new
    end

    def create
        # binding.pry
        @review = Review.create(review_params)
            if @review.save
                redirect_to review_path(@review)
            else
                render :new
            end
    end

    def show
        review_set
    end

    def edit
        review_set
    end

    def update
        @review.update(review_params)
    end

    def destroy
        @review.destroy

    end

    private
    def review_set
        @review = Review.find_by_id(params[:id])
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