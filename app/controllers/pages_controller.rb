class PagesController < ApplicationController

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
