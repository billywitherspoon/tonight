class NeighborhoodsController < ApplicationController
     before_action :set_neighborhood, only: [:edit, :update, :show]
     before_action :logged_in?

     def index 
        @neighborhoods = Neighborhood.all
     end 
  
     def new 
        @neighborhood = Neighborhood.new 
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
  
     def set_neighborhood
        @neighborhood = Neighborhood.find(params[:id])
     end
  
     def neighborhood_params 
        params.require(:neighborhood).permit(:name, :id)
     end
end
