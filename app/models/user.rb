class User < ApplicationRecord
  has_many :check_ins
  has_many :events, through: :check_ins
end
