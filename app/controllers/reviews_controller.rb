class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def index
        if params[:doctor_id]
            @reviews = Doctor.find(params[:doctor_id]).reviews
          else
            @reviews = Review.all
          end
        end
    end

    def show
        review_set
    end

    def create
        @review = Review.new(review_params)
        if @review.valid?
            @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def edit
        review_set
    end

    def update
        review_set
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy

    end

    private
    def review_set
        @review = Review.find_by_id(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :doctor_name, :user_name)
    end


end