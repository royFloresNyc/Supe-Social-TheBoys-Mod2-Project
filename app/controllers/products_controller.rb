class ProductsController < ApplicationController
    before_action :find_product, only: [:show, :edit, :update, :destroy]
    after_action :verify_authorized, only: [:new, :create, :edit, :destroy]

    def index
        @products = Product.all
    end

    def show
    end

    def new
        @product = Product.new
        authorize @product
    end

    def create
        @product = Product.create(product_params)
        authorize @product
        if @product.valid?
            @product.save
            flash[:success] = "Added #{@product.name} to the store!"
            redirect_to products_path
        else
            flash[:my_errors] = @product.errors.full_messages
            redirect_to new_product_path
        end
    end

    def edit
    end

    def update
        @product.update(product_params)
        authorize @product
        if @product.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to products_path
        else
            flash[:my_errors] = @product.errors.full_messages
            redirect_to edit_product_path(@product)
        end
    end

    def destroy
        @product.destroy
        authorize @product
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :price)
    end

    def find_product
        @product = Product.find(params[:id])
    end
end
