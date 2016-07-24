require 'sinatra/base'
require './lib/player'
require './lib/game'

# Instead of storing player names as strings
# in the session, store them as attributes of
# instances of the Player class in global
# variables (declared using $)


class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.get
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Name1])
    player2 = Player.new(params[:Name2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb :attack
  end

  post '/switch_turn' do
    @game.switch_turn
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
