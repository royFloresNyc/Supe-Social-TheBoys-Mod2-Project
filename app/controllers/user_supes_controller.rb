class UserSupesController < ApplicationController
    def create
        UserSupe.create(follow_params)
        redirect_to supes_path
    end 

    def destroy
        user_supe = UserSupe.find(params[:id])
        user_supe.destroy
        redirect_to supes_path
    end 

    private

    def follow_params
        params.require(:user_supe).permit(:user_id, :supe_id)
    end 
end 