require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe Participant do

    subject { Participant.new }

    describe "validate participant field presence" do
      it { must validate_presence_of :name }
      it { must validate_presence_of :email }
      it { must validate_presence_of :born_in_year }
      it { must validate_presence_of :topic_keywords }
      it { must validate_presence_of :topic_description }
    end

    describe "email address validation" do
      it { must allow_value("mail@domain.tld").for(:email) }
      it { wont allow_value("justastring").for(:email) }
      it { wont allow_value("invalid@address").for(:email) }

      it { must allow_value("jesus@gmail.com").for(:gmail_address) }
      it { wont allow_value("jesus").for(:gmail_address) }
      it { wont allow_value("invalid@gmail").for(:gmail_address) }

      it { wont allow_value("sip:0441234567@voip.com").for(:sip_address) }
      it { must allow_value("0441234567@voip.com").for(:sip_address) }
      it { wont allow_value("0441234567").for(:sip_address) }
      it { wont allow_value("0441234567@voip").for(:sip_address) }
    end

  end

end
