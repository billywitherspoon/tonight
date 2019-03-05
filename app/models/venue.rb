class Venue < ApplicationRecord
   belongs_to :neighborhood
   has_many :events
end
