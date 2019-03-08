class ApplicationController < ActionController::Base
  before_action :set_current_user
  helper_method :logged_in?
  
  def set_current_user
    # If you use find_by, application doesn't completely crash with error
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    if !@current_user
      redirect_to login_path
    end
  end

  def require_logged_in
    return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  end
end
