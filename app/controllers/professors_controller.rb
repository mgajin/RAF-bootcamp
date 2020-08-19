class ProfessorsController < ApplicationController
    before_action :admin_auth, only: [:new, :create, :destroy]

    def index
        @professors = Professor.all
    end

    def show
        @professor = Professor.find(params[:id])
    end

    def new
        @professor = Professor.new
    end

    def create
        @professor = Professor.new(professor_params)
        if @professor.save
            redirect_to admin_path
        else
            render 'new'
        end
    end

    def destroy
        @professor = Professor.find(params[:id])
        @professor.destroy

        redirect_to admin_path
    end

    private def professor_params
        params.require(:professor).permit(:first_name, :last_name)
    end
end