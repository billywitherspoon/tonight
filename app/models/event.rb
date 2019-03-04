class Event < ApplicationRecord
  has_many :ratings
  has_many :check_ins
end
