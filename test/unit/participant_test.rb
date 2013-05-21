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

  end

end
