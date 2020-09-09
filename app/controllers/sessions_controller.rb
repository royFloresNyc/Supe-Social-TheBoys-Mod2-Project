class SessionsController < ApplicationController
    skip_before_action :require_logged_in, only: [:new, :create]

    def new
        render :layout => false
    end


    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_home_path
        else
            flash[:error] = "Username or Password Incorrect"
            redirect_to new_login_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to new_login_path
    end
end