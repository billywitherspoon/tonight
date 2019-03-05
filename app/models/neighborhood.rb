class Neighborhood < ApplicationRecord
   has_many :venues
   has_many :events, through: :venues
end
