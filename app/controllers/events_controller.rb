class EventsController < ApplicationController
     before_action :set_event, only: [:edit, :update, :show]
     
     def index 
        @events = Event.all
     end 
  
     def new 
        @event = Event.new 
     end 
  
     def create 
     end 
  
     def show 
     end 
  
     def update 
     end 
  
     def edit 
     end 
  
     private 
  
     def set_event
        @event = Event.find(params[:id])
     end
  
     def event_params 
        params.require(:event).permit(:name, :id)
     end
end
