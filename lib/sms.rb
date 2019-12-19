require 'twilio-ruby'

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['AUTH_TOKEN']
client = Twilio::REST::Client.new(account_sid, auth_token)
from = 'set environment variable' # Your Twilio number
to = 'set environment variable' # Your mobile phone number

# client.messages.create(
# body: "Hey Secret Santa pal!",
# from: ENV['SEND_NUMBER'],
# to: ENV['MY_NUMBER'])

# class SMS
#
#   def deliver
#   end
#
# end
