class User < ApplicationRecord
  has_secure_password

  has_many :check_ins
  has_many :events, through: :check_ins

  validates :email, {presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }}
  validates :first_name, :last_name, :phone_number, presence: true
  # validates :phone_number, {presense: true, length: }

  validates :phone_number, format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/,
                              message: I18n.t('global.errors.phone_format')}
  
  # validates_format_of :phone_number,
  # :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
  # :message => "- Phone numbers must be in xxx-xxx-xxxx format."

  def full_name
    self.first_name.titleize + " " + self.last_name.titleize
  end

  def most_recent_event
    self.check_ins.last.event
  end
  
  def check_out
    self.check_ins.last.update(active: false) if !self.check_ins.empty?
  end
end
