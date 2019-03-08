class SessionsController < ApplicationController

  def new
    # leave empty
  end 

  def create
    user = User.find_by(email: params[:email])
    user = user.try(:authenticate, params[:password])

    unless user
      if params[:email] = ""
        email_err_string = "You must enter a email address"
      end

      if params[:password] = ""
        password_err_string = "You must enter a email address"
      end

      return redirect_to login_path, flash: {error_email: email_err_string, error_password: password_err_string}
    end
    
    session[:user_id] = user.id
    @user = user
    
    redirect_to events_path
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