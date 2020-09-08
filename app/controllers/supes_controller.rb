class SupesController < ApplicationController
    before_action :find_supe, only: [:show, :edit, :update, :destroy]
    skipe_before_action :require_logged_in [:index, :show]

    def index
        @supes = Supe.all
    end

    def show
    end

    def new
        @supe = Supe.new
    end

    def create
        @supe = Supe.create(supe_params)
        if @supe.valid?
            @supe.save
            flash[:success] = "Welcome #{@supe.name}"
            redirect_to supe_path(@supe)
        else
            flash[:my_errors] = @supe.errors.full_messages
            redirect_to new_supe_path
        end
    end

    def edit
    end

    def update
        @supe.update(supe_params)
        if @supe.valid?
            flash[:sucess] = "Changes saved!"
            redirect_to supe_path(@supe)
        else
            flash[:my_errors] = @supe.errors.full_messages
            redirect_to
        end
    end

    def destroy
        @supe.destroy
        redirect_to supes_path
    end

    private

    def supe_params
        params.require(:supe).permit(:name, :bio, :powers, :image_url)
    end

    def find_supe
        @supe = Supe.find(params[:id])
    end
end
