class Participant < ActiveRecord::Base
  attr_accessible :born_in_year, :email, :gmail_address, :name, :phone_number, :sip_address, :skype_user, :topic_description, :topic_keywords, :gender

  validates :name, presence: true
  validates :email, presence: true
  validates :born_in_year, presence: true
  validates :topic_keywords, presence: true
  validates :topic_description, presence: true

  @email_regexp = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  validates :email, format: { with: @email_regexp, message: "Email address is invalid." }
  validates :gmail_address, format: { with: @email_regexp, message: "GMail address is invalid." }
  validates :sip_address, format: { with: @email_regexp, message: "SIP address is invalid." }

  validates :gender, inclusion: { in: ['male', 'female', 'other', 'n/a'] }

  validates :born_in_year, inclusion: { in: 1900..2100 }

end
