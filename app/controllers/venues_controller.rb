class VenuesController < ApplicationController
     before_action :set_venue, only: [:edit, :update, :show]
     before_action :logged_in?

     def index
        @venues = Venue.all
     end 
  
     def new
        @venue = Venue.new 
     end 
  
     def create
     end 
  
     def show
         @events = @venue.sort_events(@current_user)
     end 
  
     def update 
     end 
  
     def edit 
     end 
  
     private 
  
     def set_venue
        @venue = Venue.find(params[:id])
     end
  
     def venue_params 
        params.require(:venue).permit(:name, :id)
     end
end
