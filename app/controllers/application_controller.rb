class ApplicationController < ActionController::Base
  before_action :set_current_user
  helper_method :logged_in?
  helper_method :sort_events
  
  def set_current_user
    # If you use find_by, application doesn't completely crash with error
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    if !@current_user
      redirect_to login_path
    end
  end

  def sort_events(current_user)
    attended_events_sorted = sort_attended_events
    all_events_sorted = add_non_attended_events(attended_events_sorted)
    move_user_event_to_beginning(current user, all_events_sorted)
  end

  def move_user_event_to_beginning(current_user, all_events_sorted)
    if current_user.checked_in?
      events = all_events_sorted.reject { |event| event == current_user.last_event}
      events.unshift(current_user.last_event)
    else  
      all_events_sorted
    end
  end

  def add_non_attended_events(attended_events_sorted)
    unless non_attended_events.empty?
      non_attended_events.concat attended_events_sorted
    else  
      attended_events_sorted
    end
  end

  def non_attended_events
    self.events.select{|event| event.check_ins.empty?}
  end

  def sort_attended_events
    attended_events = self.events.select{|event| !event.check_ins.empty?}
    attended_events.sort_by{|event| event.total_avg_rating}.reverse
  end

end
