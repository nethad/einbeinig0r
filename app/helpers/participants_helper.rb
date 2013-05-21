module ParticipantsHelper
  def skype_link_to(text, user)
    link_to text, "skype:#{user}?call"
  end

  def sip_link_to(text, address)
    link_to text, "sip:#{address}"
  end
end
