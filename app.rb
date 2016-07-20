require 'sinatra/base'
require 'player'

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
    $Name1 = Player.new(params[:Name1])
    $Name2 = Player.new(params[:Name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = session["Name1"]
    @name2 = session["Name2"]
    erb(:play)
  end

  get '/attack' do
    @name1 = session["Name1"]
    @name2 = session["Name2"]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
