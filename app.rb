require 'sinatra/base'
require './lib/sms'
require_relative './data_mapper_setup'

class SecretSanta < Sinatra::Base

  # get '/' do
  #   'Secret Santa!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    participant_1 = Participant.new(name: params[:participant_1_name], email: params[:participant_1_email], number: params[:participant_1_number])
    participant_2 = Participant.new(name: params[:participant_2_name], email: params[:participant_2_email], number: params[:participant_2_number])
    participant_3 = Participant.new(name: params[:participant_3_name], email: params[:participant_3_email], number: params[:participant_3_number])
    participant_4 = Participant.new(name: params[:participant_4_name], email: params[:participant_4_email], number: params[:participant_4_number])

    participant_1.save
    participant_2.save
    participant_3.save
    participant_4.save


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

    # send text message here, immediately after the receiver has been set
    SMS.batch_notify(participants)

    redirect '/confirmation'
  end

  get '/confirmation' do
    @participants = Participant.all
    erb :confirmation
  end

  run! if app_file == $0
end
