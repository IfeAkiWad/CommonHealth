class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def index
        @reviews = Review.all
    end

    def show
        review_set
    end

    def create
    end

    def edit
        review_set
    end

    def update
        review_set
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    private
    def review_set
        @review = Review.find_by_id(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :doctor_name, :user_name)
    end


end