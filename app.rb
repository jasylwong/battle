require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base
    enable :sessions

    get '/' do
        erb(:index)
    end

    post '/names' do
        player_1 = Player.new(params[:player1_name])
        player_2 = Player.new(params[:player2_name])
        $game = Game.new(player_1, player_2)
        redirect('/play')
    end

    get '/play' do
        @game = $game
        erb(:play)
    end

    post '/attack' do
        @game = $game
        @game.attack(@game.player2)
        @game.switch_turn
        redirect('/win') if !@game.win_and_lose.nil?
        erb :attack
    end

    post '/attack2' do
        @game = $game
        @game.attack(@game.player1)
        @game.switch_turn
        redirect('/win') if !@game.win_and_lose.nil?
        erb :attack2
    end

    get '/win' do
        @game = $game
        erb :win
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
end
