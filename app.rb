require 'sinatra/base'
# require "./lib/login.rb"
require_relative './data_mapper_setup'
require "./lib/user"

class SecretSanta < Sinatra::Base

  # enable :sessions

  get "/" do
      erb :index
  end

  post "/" do

puts "hey arnold"
    @user = User.new(name: params[:name],
             number: params[:number],
             password: params[:password],
             password_confirmation: params[:password_confirmation])
puts "hi siba"
    @user.save


    redirect "/"
  end


end

require_relative "./controllers/addsantas"
