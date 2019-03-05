class CheckInsController < ApplicationController
   before_action :set_check_in, only: [:edit, :update, :show]
   
   def index 
      @check_ins = CheckIn.all
   end 

   def new 
      @check_in = CheckIn.new 
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

   def set_check_in
      @check_in = CheckIn.find(params[:id])
   end

   def check_in_params 
      params.require(:check_in).permit(:name, :id)
   end
end
