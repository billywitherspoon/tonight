class Event < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  belongs_to :venue
  has_one :neighborhood, through: :venue

  def simple_start_time 
    self.start_time.strftime("%H:%M").sub!(/^[0]+/,'') + " P.M."
  end 

  def total_avg_wait_time
    if all_wait_times.empty?
      "?"
    else
      (all_wait_times.sum.fdiv(all_wait_times.size) / 5.0).round * 5
    end
  end 
  
  def total_avg_rating 
    if all_ratings.empty?
      "?"
    else
      (all_ratings.sum.fdiv(all_ratings.size) * 2).round / 2.0
    end
  end 

  def num_users_checked_in
    self.users.count
  end

  def self.sort_events(current_user)
    @all = Event.all
    attended_events_sorted = sort_attended_events
    all_events_sorted = add_non_attended_events(attended_events_sorted)
    move_user_event_to_beginning(current_user, all_events_sorted)
  end

 private

 def self.sort_attended_events
   attended_events = @all.select{|event| !event.check_ins.empty?}
   attended_events.sort_by{|event| event.total_avg_rating}.reverse
 end
 
 def self.non_attended_events
   @all.select{|event| event.check_ins.empty?}
 end

 
 def self.add_non_attended_events(attended_events_sorted)
    unless non_attended_events.empty?
       non_attended_events.concat attended_events_sorted
    else  
       attended_events_sorted
    end
 end
 
 def self.move_user_event_to_beginning(current_user, all_events_sorted)
 if current_user.checked_in?
    events = all_events_sorted.reject { |event| event == current_user.last_event}
    events.unshift(current_user.last_event)
 else  
    all_events_sorted
 end
 end

  def all_wait_times
    self.check_ins.map{|check_in| check_in.wait_time}
  end 

  def all_ratings 
    self.check_ins.map{|check_in| check_in.rating}
  end 

end
