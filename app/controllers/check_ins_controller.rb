class CheckInsController < ApplicationController
   before_action :set_check_in, only: [:edit, :update, :show]
   before_action :set_user, only: [:new, :create, :destroy]
   before_action :set_event, only: [:new]

   def index 
      @check_ins = CheckIn.all
   end 

   def new 
      @check_in = CheckIn.new 
      @rating_array = (1..5).to_a.reverse
      @wait_time_array = (0..60).to_a.select{|i| i % 5 == 0}
   end 

   def create 
      @user.check_out
      check_in = CheckIn.new(check_in_params)
      event = Event.find(check_in_params[:event_id])
      if check_in.valid?
         check_in.save
         flash[:notice] = "You've checked in to " + event.name.titleize
         redirect_to @user #event_path(event.id)
      else
         #remove this errors later
         flash[:errors] = check_in.errors
         # flash[:message] = 'Could not create new user'
         redirect_to new_check_in_path(event_id: event.id)
      end
   end 

   def show 
   end 

   def update 
   end 

   def edit 
   end 

   def destroy
      @user.check_out
      redirect_to user_path(@user)
   end 

   private 

   def set_check_in
      @check_in = CheckIn.find(params[:id])
   end

   def check_in_params 
      params.require(:check_in).permit(:rating, :wait_time, :comment, :user_id, :event_id, :active)
   end

   def set_user
      @user = User.find(session[:user_id])
   end

   def set_event
      @event = Event.find(params[:event_id])
   end

end
