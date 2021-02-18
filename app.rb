require 'sinatra/base'

class Battle < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/names' do
        @p1_name = params[:p1_name]
        @p2_name = params[:p2_name]
        erb :play
    end

    run! if app_file == $0
end
