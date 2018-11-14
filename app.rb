require "sinatra/base"


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    #do something with the params
    session[:player1] = params["Player1"]
    session[:player2] = params["Player2"]
    redirect("/play")
  end

  get '/play' do
    @player1_hp = 100
    @player2_hp = 100
    erb(:play)
  end
end
