class DoctorsController < ApplicationController
    def index 
       @doctors = Doctor.all
        if !params[:location].blank?
            @doctors = Doctor.by_location(params[:location]) 
        elsif !params[:specialty].blank?
            @doctors = Doctor.by_specialty(params[:specialty])
        else
            @doctors = Doctor.all
        end
    end

    def show
        @doctor = Doctor.find_by_id(params[:id])
    end
end