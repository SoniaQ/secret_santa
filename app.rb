require 'sinatra/base'

class SecretSanta < Sinatra::Base

  # get '/' do
  #   'Secret Santa!'
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    @email = params[:email]
    @names = params[:names]
    @emails = params[:emails]
    # redirect '/details'
    erb :details
  end

  run! if app_file == $0
end
