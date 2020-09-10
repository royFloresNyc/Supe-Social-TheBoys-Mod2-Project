class UserEventsController < ApplicationController

    def new
        @user_event = UserEvent.new
    end 

    def create
        @user_event = UserEvent.create(attend_params)
        redirect_back fallback_location: user_home_path
    end 

    private

    def attend_params
        params.require(:user_event).permit(:user_id, :event_id)
    end 
end 