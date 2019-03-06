class CheckIn < ApplicationRecord
  belongs_to :user
  belongs_to :event
  # validates :wait_time, {numericality: {less_than_or_equal_to: 60, greater_than_or_equal_to: 0, only_integer: true}, presence: true}
end
