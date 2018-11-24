require 'sinatra'
require './lib/game'

class App < Sinatra::Base
    
    get "/" do
        erb :welcome
    end

    get '/homePage' do
        erb :homePage
    end

    get '/playWithFriends' do
        erb :selection
    end

    post '/playWithFriends' do    
        width = 2
        height = 2
        $GAME = Game.new(width, height, params[:selection].to_i)
        @game = $GAME
        erb :playWithFriends
    end

    post '/game' do
        response = $GAME.pressBoard(params[:selection].to_i)
        @game = $GAME
        erb :playWithFriends
    end

    run! if app_file== $0;

end