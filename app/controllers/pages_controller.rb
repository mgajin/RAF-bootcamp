class PagesController < ApplicationController

    def index
        @title = 'Home'
        @courses = Course.all
    end

    def admin
        @users = User.all
        @professors = Professor.all
        @courses = Course.all
    end
end
