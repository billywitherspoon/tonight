class User < ApplicationRecord
  has_secure_password
  has_many :check_ins
  has_many :events, through: :check_ins

  validates :email, {presence: true, uniqueness: true}
  validates :first_name, :last_name, presence: true
  # validates :phone_number, {presense: true, length: }

end
