require 'sinatra/base'
require_relative 'player'
require_relative 'game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to '/play'
  end

  get '/play' do
    @player_1_name=$player_1.name
    @player_2_name=$player_2.name
    @player_2_points = $player_2.points
    erb(:play)
  end

  get "/attack" do
    @player_1_name=$player_1.name
    @player_2_name=$player_2.name
    Game.new.attack($player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
