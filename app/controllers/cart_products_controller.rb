class CartProductsController < ApplicationController
    def create
        cart_product = CartProduct.create(cart_product_params)
        redirect_back fallback_location: user_home_path
    end 

    def destroy
        cart_product = CartProduct.find(params[:id])
        cart_product.destroy
        redirect_back fallback_location: user_home_path
    end

    private

    def cart_product_params
        params.require(:cart_product).permit(:cart_id, :product_id)
    end 
end 