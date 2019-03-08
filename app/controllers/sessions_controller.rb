class SessionsController < ApplicationController

  def new
    # leave empty
  end 

  def create
    user = User.find_by(email: params[:email])
    user = user.try(:authenticate, params[:password])
    unless user 
      flash[:error] = "Invalid Login."
      redirect_to new_session_path
    else
      flash[:notice] = "Login successful."
      session[:user_id] = user.id
      @user = user
      redirect_to @user
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