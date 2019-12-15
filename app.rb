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
    redirect '/details'
  end

  get '/details' do
    @participant_1_name = $participant_1.name
    @participant_1_email = $participant_1.email
    erb :details
  end

  run! if app_file == $0
end
