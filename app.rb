require 'sinatra/base'
require 'participant'

class SecretSanta < Sinatra::Base

  # get '/' do
  #   'Secret Santa!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    $participant_1 = Participant.new(params[:name])
    # $p_1_email = params[:email]
    # @names = params[:names]
    # @emails = params[:emails]
    # redirect '/details'
    redirect '/details'
  end

  get '/details' do
    @participant_1 = $participant_1.name
    erb :details
  end

  run! if app_file == $0
end
