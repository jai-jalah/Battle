require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  set    :session_secret, ENV['SESSION_SECRET']

  get '/' do
    erb :index
  end

  post '/names' do
    $p1_name = Player.new(params[:p1_name])
    $p2_name = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1 = $p1_name
    @p2 = $p2_name
    erb :play
  end

  get '/player_1_attack' do
    @p1 = $p1_name
    @p2 = $p2_name
    erb :player_1_attack
  end

  run! if app_file == $0
end
