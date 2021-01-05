class SessionsController < ApplicationController

    before_action :require_logged_in, only: [:index, :show]

    def new
        @user = User.new
        render :new
    end

    def create 
        @user = User.find_by_credentials(
          params[:user][:user_name], 
          params[:user][:password]
        ) 
    
        if @user 
          login(@user) #method in application_controller
          redirect_to cats_url
        else 
          render :new 
        end
      end 

      def destroy 
        logout 
        redirect_to new_session_url 
      end


end
