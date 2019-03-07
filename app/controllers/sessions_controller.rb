class SessionsController < ApplicationController

  def new
    # leave empty
  end 

  def create
    user = User.find_by(email: params[:email])
    unless user
      flash[:message] = "Invalid email or password."
      redirect_to login_path
    else
      session[:user_id] = user.id

      #
      # Needs to redirect_to root path
      #
      
      redirect_to events_path
    end
  end

  def destroy 
    session.clear
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end