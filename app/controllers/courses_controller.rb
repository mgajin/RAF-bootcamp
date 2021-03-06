class CoursesController < ApplicationController
    before_action :admin_auth, only: [:new, :create, :destroy]

    def index
        @course_name = params[:name] 
        if @course_name
            @courses = Course.all.select { |course| course.subject.name.include? @course_name }
        else
            @courses = Course.all            
        end
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
        @subjects = Subject.all
        @professors = Professor.all
    end

    def create
        @professor = Professor.find(params[:professor_id])
        @course = @professor.courses.create(course_params)

        if @course.save
            redirect_to admin_path
        else 
            render 'new'
        end
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy

        redirect_to admin_path
    end

    private def course_params
        params.permit([:subject_id, :professor_id])
    end
end