class UsersController < ApplicationController
   before_action :set_user, only: [:edit, :update, :show]
   
   def index 
      @users = User.all
   end 

   def new
    unless logged_in?
      flash[:message] = "Incorrect Username"
      redirect_to login_path
    else
      @user = User.new
    end
   end 

   def create 
   end 

   def show 
   end 

   def update 
   end 

   def edit 
   end 

   def delete 
   end

   private 

   def set_user
      @user = User.find(params[:id])
   end

   def user_params 
      params.require(:user).permit(:name, :id)
   end
end
