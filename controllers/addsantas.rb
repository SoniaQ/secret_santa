require 'sinatra/base'
require './data_mapper_setup'
require "./lib/participant"

class SecretSanta < Sinatra::Base

  post '/addparticipants' do
    participant_1 = Participant.new(name: params[:participant_1_name], email: params[:participant_1_email])
    participant_2 = Participant.new(name: params[:participant_2_name], email: params[:participant_2_email])

    participant_1.save
    participant_2.save

    participants = Participant.all
    receivers = participants.map(&:name)

    participants.each do |participant|
      if participant.name != receivers.last
        participant.receiver = receivers.pop
        participant.save
      else
        participant.receiver = receivers.pop[0]
        participant.save
      end
    end

    redirect '/pairs'
  end

  get '/pairs' do
    # @participants = Participant.all
    # erb :pairs
  end

  run! if app_file == $0
end
