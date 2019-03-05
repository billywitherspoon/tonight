class EventsController < ApplicationController
<<<<<<< HEAD
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
=======
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
>>>>>>> 1ad62bfaebd8a41ce4c7ea03dd8dba12e5086965
end
