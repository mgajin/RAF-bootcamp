class PagesController < ApplicationController

    # skip_before_action :authorized, only: [:index]

    def index
        @courses = Course.all
        @professors = Professor.all
    end

    def admin
        @users = User.all
        @professors = Professor.all
        @courses = Course.all
    end
end
