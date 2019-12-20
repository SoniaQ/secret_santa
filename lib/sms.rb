require 'twilio-ruby'
# require 'dotenv'
# Dotenv.load('../.env')
# require 'byebug'

class SMS
  def self.batch_notify(participants)
    participants.each do |participant|
      message(participant)
    end
  end

  def self.message(participant)
    p account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)
    byebug
    client.messages.create(
      body: "Hey #{participant.name}! You need to be buy a gift for #{participant.receiver}.",
      from: ENV['SEND_NUMBER'],
      to: participant.number)
  end

end
