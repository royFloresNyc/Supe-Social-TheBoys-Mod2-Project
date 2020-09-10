class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception
    before_action :require_logged_in
    

    rescue_from Pundit::NotAuthorizedError do
        redirect_to user_home_path, alert: 'Access Denied'
    end

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    private

    def not_authorized
        flash[:alert] = "Access denied."
        redirect_to(user_home_path)
    end

    def require_logged_in
        redirect_to new_login_path unless current_user
    end
end
