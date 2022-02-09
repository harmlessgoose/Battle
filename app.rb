require 'sinatra/base'
require 'sinatra/reloader'



class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

 post '/names' do
  session[:Player1] = params[:Player1]
  session[:Player2] = params[:Player2]
  redirect '/play'
 end

 get '/attack' do
  @Player1 = session[:Player1]
  @Player2 = session[:Player2]
  erb :attack
 end

 get '/play' do
  @Player1 = session[:Player1]
  @Player2 = session[:Player2]
  erb :play
 end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end