class WelcomeController < ApplicationController
  before_action :require_logged_in
  
  def home
    # Can't imply this one because it is a custom method (as far as I know)
  end
end