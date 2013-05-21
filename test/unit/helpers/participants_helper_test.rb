require 'test_helper'

class ParticipantsHelperTest < ActionView::TestCase
  
  should "return a valid skype link" do 
    assert_equal '<a href="skype:foo?call"><img alt="Skype-logo" height="20px" src="/images/skype-logo.png" width="20px" /></a> foo', skype_link_to("Call foo", "foo")
  end

  should "return a valid sip link" do 
    assert_equal '<a href="sip:foo">Call foo</a>', sip_link_to("Call foo", "foo")
  end

end
