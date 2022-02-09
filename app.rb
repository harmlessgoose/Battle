require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

 post '/names' do
  @Player_1 = params[:Player1]
  @Player_2 = params[:Player2]
   erb :play
 end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end