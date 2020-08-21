class SubscriptionsController < ApplicationController

    def create 
        @user = User.find(current_user.id)
        @subscription = @user.subscriptions.create(subscription_params)
        @subscription.save
    end

    def destroy 
    end

    private def subscription_params
        params.permit([:course_id, :user_id])
    end

end