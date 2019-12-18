require 'twilio-ruby'

account_sid = 'set environment variable'
auth_token = 'set environment variable'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = 'set environment variable' # Your Twilio number
to = 'set environment variable' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)

# class SMS
#
#   def deliver
#   end
#
# end
