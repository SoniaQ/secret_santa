require 'sinatra/base'
require './lib/participant'

class SecretSanta < Sinatra::Base

  # get '/' do
  #   'Secret Santa!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    $participant_1 = Participant.new(params[:participant_1_name], params[:participant_1_email])
    $participant_2 = Participant.new(params[:participant_2_name], params[:participant_2_email])
    redirect '/details'
  end

  get '/details' do
    @participant_1_name = $participant_1.name
    @participant_1_email = $participant_1.email
    @participant_2_name = $participant_2.name
    @participant_2_email = $participant_2.email
    erb :details
  end

  run! if app_file == $0
end
