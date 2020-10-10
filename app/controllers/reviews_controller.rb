class ReviewsController < ApplicationController

    def index
        @review = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
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