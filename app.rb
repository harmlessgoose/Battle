require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    $game = Game.new
    erb :index
  end

 post '/names' do
  $player_1 = Player.new(params[:Player1])
  $player_2 = Player.new(params[:Player2])
  redirect '/play'
 end

 get '/play' do
  @Player1 = $player_1.name
  @Player2 = $player_2.name
  erb :play
 end

 get '/attack' do
  @Player1 = $player_1.name
  @Player2 = $player_2.name

  # $player_1.attacks($player_2)
  $game.attack($player_1, $player_2)

  @Player_2_hp = $player_2.hp

  erb :attack
 end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end