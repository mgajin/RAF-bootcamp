class ReviewsController < ApplicationController
    before_action :authorized 

    def index:
    end

    def create 
        @user = User.find(current_user.id)
        @review = @user.reviews.create(review_params)
        @review.save
    end

    private def review_params
        params.permit([:comment, :course_id, :user_id])
    end

end
