class ReviewsController < ApplicationController
    before_action :require_login
    before_action :review_set, only: [:edit, :update, :show, :destroy] #filter runs before all controller's actions, and kicks requests out with 403 Forbidden unless logged in.
    before_action :get_doctor
    skip_before_action :require_login, only: [:index]
    
    def new
        @review = @doctors.reviews.build
        # Review.new#(doctor_id: params[:doctor_id])
        # if params[:doctor_id]
        #     @doctor = Doctor.find_by_id(params[:doctor_id])
        # end
        
    end

    def index
        # binding.pry
        # @reviews = Review.all
                # @reviews = if params[:doctor_id]
    # #         #defining reviews based on inclusion of the doctor_id parameter
                    # @reviews = Doctor.find_by_id(params[:id]).reviews
                    # Review.find_by_doctor_id(params[:doctor_id]) #chained to custom method built in Review model  
                # else
                    @reviews = @doctors.reviews
                # end
                # binding.pry   
    # current_user.reviews
                
    end

    def show
        # review_set
        # if params[:doctor_id]
        #     @doctor = Doctor.find_by_id(params[:doctor_id])
        # end
        #create a show view 
    end

    def create 
        
        @review = @doctors.reviews.build(review_params)
            if @review.save
                redirect_to @review, notice: 'review was successfully created.'
                render :show, status: :created, location: @review
            #     if params[:doctor_id]
                    # redirect_to reviews_path(@review)
                # end
            else
                render :new
            end
        # @review = current_user.reviews.new(review_params)
        # if @review.save
        #     # if params[:doctor_id]
        #     #     @doctor = Doctor.find_by_id(params[:doctor_id])
        #     # end
        #     redirect_to reviews_path(@doctor)
        # else
        #     render :new
        # end
    end

    def edit #notrendering updated form
       review_set
        # byebug
    end

    def update #notrendering updated form
        # review_set
        # byebug
        if @review.update(review_params) 
            redirect_to doctor_review_path(@doctor), notice: 'Review was successfully updated.'        
            render :show, status: :ok, location: @review
        else
            # flash[:alert] = "try again."
            render :edit
        end
    end

    def destroy
        if @review.destroy
            redirect_to doctor_reviews_path(@doctor), notice: 'Review was successfully deleted.'
        # review_set
        # if @review.delete
        #     redirect_to doctor_review_path
        else
        #     flash[:alert] = "Could not be deleted. Try again."
            render :edit
        end
    end

    private
    def review_set
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

    def get_doctor
        @doctor = Doctor.find(params[:doctor_id])
    end
end