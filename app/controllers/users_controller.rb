class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :authorized, only: [:show] 

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            redirect_to home_path
        else
            render 'new'
        end
    end

    private
        def set_user
            @user = User.find(params[:id])
        end
    
        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :password)
        end
end