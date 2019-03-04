class Event < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  belongs_to :venue
end
