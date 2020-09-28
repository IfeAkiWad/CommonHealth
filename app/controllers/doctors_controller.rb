class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find_by_id(params[:id])
    end

    # def create
    # end

    #should there be a create action if there the doctors are already provided in the system?
    #maybe give doctor oppurtunity to be a user as well?
end