class Venue < ApplicationRecord
   belongs_to :neighborhood
   has_many :events

   def sort_events(current_user)
      attended_events_sorted = sort_attended_events
      all_events_sorted = add_non_attended_events(attended_events_sorted)
      move_user_event_to_beginning(current_user, all_events_sorted)
   end
  
   private
   def sort_attended_events
     attended_events = self.events.select{|event| !event.check_ins.empty?}
     attended_events.sort_by{|event| event.total_avg_rating}.reverse
   end
   
   def non_attended_events
     self.events.select{|event| event.check_ins.empty?}
   end

   
   def add_non_attended_events(attended_events_sorted)
      unless non_attended_events.empty?
         non_attended_events.concat attended_events_sorted
      else  
         attended_events_sorted
      end
   end
   
   def move_user_event_to_beginning(current_user, all_events_sorted)
   if current_user.checked_in?
      events = all_events_sorted.reject { |event| event == current_user.last_event}
      events.unshift(current_user.last_event)
   else  
      all_events_sorted
   end
   end
  
end
