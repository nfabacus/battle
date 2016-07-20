require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end
  post '/names' do
    @name1 = params[:Name1]
    @name2 = params[:Name2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
