class ApplicationController < ActionController::Base
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :not_authorized
    protect_from_forgery with: :exception
    before_action :require_logged_in, :current_cart


    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def current_cart
        if require_logged_in
            @current_cart = @current_user.cart
        else
            if session[:cart]
                @cart = Cart.find_by(id: session[:cart_id])
            else
                @cart = Cart.create
                session[:cart] = @cart.id
            end
        end
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
