class DoctorsController < ApplicationController
    def index 
        # binding.pry
        # @user = User.find_by_id(params[:user_id])
       @doctors = Doctor.all
        if !params[:location].blank?
            @doctors = Doctor.by_location(params[:location]) 
        elsif !params[:specialty].blank?
            @doctors = Doctor.by_specialty(params[:specialty])
        # elsif params[:user_id] 
        #    @doctors = @user.doctors
        else
            @doctors = Doctor.all
        end
        
    end

    def show
        @doctor = Doctor.find_by_id(params[:id])
    end

    private
    def doctor_params
        params.require(:doctor).permit(:name)
    end
end