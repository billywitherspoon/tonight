class CheckIn < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :wait_time, presence: true
  validates :wait_time, numericality: {only_integer: true}
end
