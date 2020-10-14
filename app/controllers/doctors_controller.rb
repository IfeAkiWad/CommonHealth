class DoctorsController < ApplicationController
    def index #ERROR: list repeats itself!!!!
        @doctors = Doctor.all
        if !params[:location].blank?
            @doctors = Doctor.find_by_location(params[:location])
            # @doctors = Doctor.by_location(params[:location])
        end
    end

    def show
        @doctor = Doctor.find_by_id(params[:id])
    end

    # def create
    #     @doctor = Doctor.create(doctor_params)
    #     @doctor.save
    #     redirect_to doctors_path
    # end

    #should there be a create action if there the doctors are already provided in the system?
    #maybe give doctor oppurtunity to be a user as well?
    # private
    # def doctor_params
    #     params.require(:user).permit(:name, :specialty, :location, :insurance_accepted)
    # end

end