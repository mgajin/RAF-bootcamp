class SubjectsController < ApplicationController

    def show
        @subjects = Subject.all
    end

    def new
        @subject = Subject.new
    end

    def create
        @subject = Subject.new(subject_params)
        if @subject.save
            redirect_to admin_path
        else 
            render 'new'
        end
    end

    private def subject_params
        params.require(:subject).permit(:name)
    end

end
