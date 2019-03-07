class UsersController < ApplicationController
   before_action :set_user, only: [:edit, :update, :show]
   before_action :user_match?, only: [:show]
   before_action :logged_in?
   
   def index 
      @users = User.all
   end 

   def new
      @user = User.new
   end 
   

   def create
      user = User.new(user_params)
      if user.valid?
         user.save
         session[:user_id] = user.id
         redirect_to user
      else
         flash[:errors] = user.errors.full_messages
         redirect_to new_user_path
      end
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

   def user_match?
      @user_match = @user == @current_user
   end 

   def user_params 
      params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation)
   end
end
