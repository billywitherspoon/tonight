class SessionsController < ApplicationController
  
  def create
    user = User.find_by(username: params[:username])
    unless user
      flash[:message] = "Invalid username"
      redirect_to login_path
    else
      session[:user_id] = user.id
      redirect_to students_path
    end
  end

  # def destroy
  #   session.clear
  #   redirect_to students_path
  # end
end