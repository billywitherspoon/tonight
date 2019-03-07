class User < ApplicationRecord
  has_secure_password

  has_many :check_ins
  has_many :events, through: :check_ins

  validates :email, {uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }}
  validates :first_name, :last_name, :password, presence: true
  validates_format_of :phone_number, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "- Phone numbers must be in xxx-xxx-xxxx format."

  def full_name
    self.first_name.titleize + " " + self.last_name.titleize
  end

  def last_check_in
    self.check_ins.last unless self.check_ins.empty?
  end

  def last_event
    self.last_check_in.event unless self.check_ins.empty?
  end

  def checked_in?
    self.last_check_in.active unless self.check_ins.empty?
  end 

  def check_out
    self.check_ins.last.update(active: false) if !self.check_ins.empty?
  end
end
