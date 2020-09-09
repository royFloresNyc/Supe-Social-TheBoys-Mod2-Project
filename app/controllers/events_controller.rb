class EventsController < ApplicationController
before_action :find_event, only: [:show, :edit, :update]

    def index
        @events = Event.all 
    end 

    def new
        @event = Event.new
    end 

    def create
        event = Event.create(event_params)
        if event.valid?
            redirect_to event_path(event)
        else  
            flash[:errors] = event.errors.full_messages
            redirect_to new_event_path
        end 
    end 

    def edit
    end 

    def update
        @event.update(event_params)
        if @event.valid?
            redirect_to event_path(@event)
        else  
            flash[:errors] = @event.errors.full_messages 
            redirect_to edit_event_path(@event)
        end 
    end 

    def show
    end 

    private

    def event_params
        params.require(:event).permit(:title, :location, :date, :cost, :supe_id)
    end 

    def find_event
        @event = Event.find(params[:id])
    end 
end
