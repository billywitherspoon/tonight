<<<<<<< HEAD
#delete this
=======
class VenuesController < ApplicationController
     before_action :set_venue, only: [:edit, :update, :show]
     
     def index 
        @venues = Venue.all
     end 
  
     def new 
        @venue = Venue.new 
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
  
     def set_venue
        @venue = Venue.find(params[:id])
     end
  
     def venue_params 
        params.require(:venue).permit(:name, :id)
     end
end
>>>>>>> 1ad62bfaebd8a41ce4c7ea03dd8dba12e5086965
