class SupesController < ApplicationController
    before_action :find_supe, only: [:show, :edit, :update, :destroy]
    after_action :verify_authorized, only: [:new, :create, :edit, :destroy]

    def index
        @supes = Supe.all
    end

    def show
        @post = Post.new #declaring this to be able to create a new post from the supe show page
    end

    def new
        @supe = Supe.new
    end

    def create
    end

    def edit
    end

    def update
        @supe.update(supe_params)
        authorize @supe
        if @supe.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to supe_path(@supe)
        else
            flash[:my_errors] = @supe.errors.full_messages
            redirect_to
        end
    end

    def destroy
    end

    private

    def supe_params
        params.require(:supe).permit(:name, :bio, :powers, :image_url)
    end

    def find_supe
        @supe = Supe.find(params[:id])
    end
end
