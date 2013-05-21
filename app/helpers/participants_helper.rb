module ParticipantsHelper
  def skype_link_to(text, user)
    (link_to image_tag("skype-logo.png", width: "20px", height: "20px") , "skype:#{user}?call") + " #{user}"
  end

  def sip_link_to(text, address)
    link_to text, "sip:#{address}"
  end
end
