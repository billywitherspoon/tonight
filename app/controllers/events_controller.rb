class EventsController < ApplicationController
   before_action :set_event, only: [:edit, :update, :show]
   before_action :set_user, only: [:show, :index]
   
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
   
   def set_user
      @user = User.find(session[:user_id])
   end
end
