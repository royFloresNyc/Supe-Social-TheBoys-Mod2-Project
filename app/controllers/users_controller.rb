class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :require_logged_in, only: [:new, :create]


    def index
        @users = User.all
    end

    def home
        @posts = Post.all
    end 

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            flash[:success] = "Welcome, #{@user.username}"
            redirect_to user_path(@user)
        else
            flash[:my_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to user_home_path
        else
            flash[:my_errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def destroy 
        @user.destroy 
        redirect_to new_login_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :image_url)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
