require 'sinatra/base'
require "./lib/login.rb"
require './data_mapper_setup'

class SecretSanta < Sinatra::Base

  get "/" do
      erb :index
  end



  get "/sessions/new" do
      erb :"sessions/new"
  end

  post "/sessions" do
      user = Login.new(User).user(params[:number], params[:password])
      session[:user_id] = user.id if user
      redirect "/"
    end
end
