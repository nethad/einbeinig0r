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

    describe "gender validation" do
      it { must allow_value("male").for(:gender) }
      it { must allow_value("female").for(:gender) }
      it { must allow_value("other").for(:gender) }
      it { must allow_value("n/a").for(:gender) }
      it { wont allow_value("somevalue").for(:gender) }
    end

    describe "born in year validation" do
      it { wont allow_value(1899).for(:born_in_year) }
      it { wont allow_value(2101).for(:born_in_year) }
      it { must allow_value(1900).for(:born_in_year) }
      it { must allow_value(2100).for(:born_in_year) }
      it { must allow_value(1988).for(:born_in_year) }
      it { wont allow_value(0).for(:born_in_year) }
      it { wont allow_value(-1).for(:born_in_year) }
    end

  end

end
