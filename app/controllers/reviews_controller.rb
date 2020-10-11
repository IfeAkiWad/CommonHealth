class ReviewsController < ApplicationController
    before_action :require_login

    def index
        # binding.pry
        if params[:doctor_id]
            @reviews = Doctor.find(params[:doctor_id]).reviews
        end
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
            if @review.save
                redirect_to doctor_reviews_path
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