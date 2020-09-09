class CartsController < ApplicationController

    def create
        @cart = Cart.create(cart_params)
        redirect_back fallback_location: user_home_path
    end 

    def destroy
        @cart = Cart.find(params[:id])
        @cart.destroy
        redirect_back fallback_location: user_home_path
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id, :product_id)
    end 
end 