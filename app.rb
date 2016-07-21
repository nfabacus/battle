require 'sinatra/base'
require './lib/player'
require './lib/game'

# Instead of storing player names as strings
# in the session, store them as attributes of
# instances of the Player class in global
# variables (declared using $)


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/names' do
    $game = Game.new
    $player1 = Player.new(params[:Name1])
    $player2 = Player.new(params[:Name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player1.return_name
    @name2 = $player2.return_name
    @hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @name1 = $player1.return_name
    @name2 = $player2.return_name
    $game.attack($player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
