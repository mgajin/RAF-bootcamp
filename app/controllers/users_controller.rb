class UsersController < ApplicationController

    # def admin
    #     render     
    # end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        @user.save
    end

    private def user_params
        params.require(:user).permit(:username, :password)
    end
end