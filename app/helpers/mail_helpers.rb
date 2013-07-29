def send_invite_message(from, to, link)
  RestClient.post "https://api:key-2qz-jddfyukt07yw7p6sxv07-wubrra8"\
  "@api.mailgun.net/v2/opinionatedguerilla.mailgun.org/messages",
  :from => "Opinionated Guerilla <me@opinionatedguerilla.mailgun.org>",
  :to => to,
  :subject => from + " Has Invited You To Take a Survey!",
  :text => "Hey There!\n\n#{from} has created a survey on Opinionated Guerilla they'd like you to take. 
  Follow the link below to take the survey!
  \n
  #{link}
  \n
  Best,\n
  Your friendly local gun-toting guerilla."
end