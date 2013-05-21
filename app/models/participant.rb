class Participant < ActiveRecord::Base
  attr_accessible :born_in_year, :email, :gmail_address, :name, :phone_number, :sip_address, :skype_user, :topic_description, :topic_keywords

  validates :name, presence: true
  validates :email, presence: true
  validates :born_in_year, presence: true
  validates :topic_keywords, presence: true
  validates :topic_description, presence: true
  
end
