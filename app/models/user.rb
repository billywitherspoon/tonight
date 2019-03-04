class User < ApplicationRecord
  has_many :ratings
  has_many :check_ins
  has_many :attended_events, through: :check_ins, source: :event
  has_many :rated_events, through: :ratings, source: :event
end
