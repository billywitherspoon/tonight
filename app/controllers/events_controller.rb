class EventsController < ApplicationController
   before_action :set_event, only: [:edit, :update, :show]

   
   def index 
      @events = Event.all
   end 

   def show 
   end
   
   
   private 
   
   def set_event
      @event = Event.find(params[:id])
   end
   
   def event_params 
      params.require(:event).permit(:name, :id)
   end
   
 

end
