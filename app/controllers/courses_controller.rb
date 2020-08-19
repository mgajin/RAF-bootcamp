class CoursesController < ApplicationController
    before_action :admin_auth, only: [:new, :create, :destroy]

    def index
        @course_name = params[:name] 
        if @course_name
            @courses = Course.all.select { |course| course.name.include? @course_name }
        else
            @courses = Course.all            
        end
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
        @professors = Professor.all
    end

    def create
        @professors = Professor.all
        @professor = Professor.find(params[:professor_id])
        @course = @professor.courses.create(course_params)
        
        if @course
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

    private 
        def course_params
            params.require(:course).permit(:name)
        end
end