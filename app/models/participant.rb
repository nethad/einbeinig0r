class Participant < ActiveRecord::Base
  attr_accessible :born_in_year, :email, :gmail_address, :name, :phone_number, :sip_address, :skype_user, :topic_description, :topic_keywords
end
