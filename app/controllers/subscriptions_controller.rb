class SubscriptionsController < ApplicationController
    before_action :authorized 

    def create 
        @user = User.find(current_user.id)
        @subscription = @user.subscriptions.create(subscription_params)
        @subscription.save
    end

    def destroy 
        @subscription = Subscription.where(course_id: params[:course_id], user_id: params[:user_id]).take
        @subscription.destroy
    end

    private def subscription_params
        params.permit([:course_id, :user_id])
    end

end