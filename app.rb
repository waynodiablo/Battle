require "sinatra/base"
require "./lib/player.rb"

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    #do something with the params
    $player1 = Player.new(params["Player1"])
    $player2 = Player.new(params["Player2"])
    redirect("/play")
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $player2.reduce_hp
    redirect("/play")
  end
end
