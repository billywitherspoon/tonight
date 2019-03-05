class ApplicationController < ActionController::Base
  # helper_method :logged_in?
  # before_action :set_current_user
  
  # def set_current_user
  #   # If you use find_by, application doesn't completely crash with error
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # def logged_in?
  #   !!@current_user
  # end
end
