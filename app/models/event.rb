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
  
  def self.all_sorted_by_rating
    non_attended_events = self.all.select{|event| event.check_ins.empty?}
    attended_events = self.all.select{|event| !event.check_ins.empty?}
    sorted_attended_events = attended_events.sort_by{|event| event.total_avg_rating}.reverse
    unless non_attended_events.empty?
      non_attended_events.concat sorted_attended_events
    else
      sorted_attended_events
    end
  end

  private

  def all_wait_times
    self.check_ins.map{|check_in| check_in.wait_time}
  end 

  def all_ratings 
    self.check_ins.map{|check_in| check_in.rating}
  end 

end
