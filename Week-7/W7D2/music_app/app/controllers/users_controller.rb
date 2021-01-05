class UsersController < ApplicationController

    def create
    end

    def new
        @user = User.new
        render :new
    end

    def show
        render :show
    end
end
