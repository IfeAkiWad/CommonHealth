class PatientsController < ApplicationController

    def new
        @patient = Patient.new
    end

    def index
        #is an index action necessary?
        @patients = Patient.all
    end

    def show
        patient_set
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.valid?
            @patient.save
            redirect_to patient_path(@patient)
        else
            render :new
        end
    end

    def edit
        patient_set
    end

    def update
        patient_set
        @patient.update(patient_params)
        redirect_to patietn_path(@patient)
    end

    def destroy
        #is this similar to the destroy action in the sessions controller?

    end

    private
    def patient_set
        @patient = Patient.find_by_id(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:name, :age, :location, :username, :email, :insurance, :password_confirmation)
    end
end