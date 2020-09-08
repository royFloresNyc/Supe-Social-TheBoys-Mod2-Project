class ApplicationController < ActionController::Base
    # include Pundit
    # rescue_from Pundit::NotAuthorizedError, with: :not_authorized
    protect_from_forgery with: :exception
    before_action :require_logged_in


    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    private

    def not_authorized
        flash[:alert] = "Access denied."
        redirect_to (request.referrer)
    end

    def require_logged_in
        redirect_to new_login_path unless current_user
    end
end
