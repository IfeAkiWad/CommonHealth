class ReviewsController < ApplicationController
    before_action :require_login #filter runs before all controller's actions, and kicks requests out with 403 Forbidden unless logged in.
    skip_before_action :require_login, only: [:index]
    
    def new
        if params[:doctor_id]
            @doctor = Doctor.find_by_id(params[:doctor_id])
        end
        @review = Review.new
    end

    def index
      @reviews = if params[:doctor_id]
            #defining reviews based on inclusion of the doctor_id parameter
                    @reviews = Review.find_by_doctor_id(params[:doctor_id]) #chained to custom method built in Review model
                else
                    Review.all
                    current_user.reviews
                end
                
    end

    def show
        review_set
    end

    def create 
        
        @review = current_user.reviews.new(review_params)
        if @review.save
            redirect_to reviews_path(@doctor)
        else
            render :new
        end
    end

    def edit #notrendering updated form
        review_set
    end

    def update #notrendering updated form
        review_set
       if @review.update(review_params)
        redirect_to user_path(@user)
       else 
        render :edit
       end
    end

    def destroy

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