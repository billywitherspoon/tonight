class Event < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  belongs_to :venue

  def total_avg_wait_time
    if get_all_wait_times.empty?
      "?"
    else
      (get_all_wait_times.sum.fdiv(get_all_wait_times.size) / 5.0).round * 5
    end
  end 

  private

  def get_all_wait_times
    self.check_ins.map{|check_in| check_in.wait_time}
  end 

end
