class ProductsController < ApplicationController
    before_action :find_product, only: [:show, :edit, :update, :destroy]

    def index
        @products = Product.all
    end

    def show
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.create(product_params)
        if @product.valid?
            @product.save
            flash[:success] = "Welcome #{@product.name}"
            redirect_to product_path(@product)
        else
            flash[:my_errors] = @product.errors.full_messages
            redirect_to new_product_path
        end
    end

    def edit
    end

    def update
        @product.update(product_params)
        if @product.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to product_path(@product)
        else
            flash[:my_errors] = @product.errors.full_messages
            redirect_to edit_product_path(@product)
        end
    end

    def add
        cart << params[:product]
        render :index
      end

    def destroy

    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :supe_id)
    end

    def find_product
        @product = product.find(params[:id])
    end
end
