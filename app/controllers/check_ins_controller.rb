class CheckInsController < ApplicationController
   before_action :set_check_in, only: [:edit, :update, :show]

   
   def index 
      @check_ins = CheckIn.all
   end 

   def new 
      @event = Event.find(params[:event_id])
      @user = User.find(session[:user_id])
      @check_in = CheckIn.new 
      @rating_array = (1..5).to_a.reverse
      @wait_time_array = (0..60).to_a.select{|i| i % 5 == 0}
   end 

   def create 
      check_in = CheckIn.new(check_in_params)
      if check_in.valid?
         check_in.save
         session[:current_event_id] = check_in.event.id
         redirect_to events_path
      else
         #remove this errors later
         flash[:errors] = check_in.errors
         # flash[:message] = 'Could not create new user'
         redirect_to new_check_in_path(event_id: check_in_params[:event_id])
      end
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
      params.require(:check_in).permit(:rating, :wait_time, :comment, :user_id, :event_id)
   end

end
