class Event < ApplicationRecord
  has_many :ratings
  has_many :check_ins
  has_many :attendees, through: :check_ins, source: :user
  has_many :raters, through: :ratings, source: :user
  belongs_to :venue
end
