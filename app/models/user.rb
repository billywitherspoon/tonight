class User < ApplicationRecord
  has_secure_password

  has_many :check_ins
  has_many :events, through: :check_ins
  
  validates :email, {presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }}
  validates :first_name, :last_name, :phone_number, presence: true
  # validates :phone_number, {presense: true, length: }

  validates_format_of :phone_number,
  :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
  :message => "- Phone numbers must be in xxx-xxx-xxxx format."

end
