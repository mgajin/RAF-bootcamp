class ReviewsController < ApplicationController
    before_action :authorized 

    def index
        @reviews = Review.all
    end

    def create 
        comment = params[:review][:comment]
        course_id = params[:course_id]
        @course = Course.find(course_id)
        @review = @course.reviews.create({comment: comment, course_id: course_id, user_id: current_user.id})
        @review.save
        redirect_to course_path(@course)
    end

end
