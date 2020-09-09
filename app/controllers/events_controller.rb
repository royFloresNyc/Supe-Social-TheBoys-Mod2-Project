class EventsController < ApplicationController
    def index
        @events = Event.all 
    end 

    def new
        @event = Event.new
    end 

    def create
        event = Event.create(event_params)
        authorize event
        redirect_to event_path(event)
    end 

    def show
        @event = Event.find(params[:id])
    end 

    private

    def event_params
        params.require(:event).permit(:title, :location, :date, :cost, :supe_id)
    end 

end
