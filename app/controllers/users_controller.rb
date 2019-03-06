class UsersController < ApplicationController
   before_action :set_user, only: [:edit, :update, :show]
   
   def index 
      @users = User.all
   end 

   def new
      @user = User.new
   #  unless logged_in?
   #    flash[:message] = "Incorrect Username"
   #    redirect_to login_path
   #  else
   #    @user = User.new
   #  end
   end 

   def create
      user = User.new(user_params)
      if user.valid?
         user.save
         session[:user_id] = user.id
         redirect_to user
      else
         #remove this errors later
         flash[:errors] = user.errors
         # flash[:message] = 'Could not create new user'
         redirect_to events_path
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
      @user = User.find(params[:user_id])
   end

   def user_params 
      params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation)
   end
end
