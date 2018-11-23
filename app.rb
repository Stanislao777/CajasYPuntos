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
        width = 3
        height = 3
        $GAME = Game.new(width, height)
        @game = $GAME
        erb :playWithFriends
    end

    post '/playWithFriends' do
        response = $GAME.pressBoard(params[:selection].to_i)
        @game = $GAME
        erb :playWithFriends
    end

    run! if app_file== $0;

end