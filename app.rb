require 'sinatra'

class Battle < Sinatra::Base
    get '/' do
        "Testing infrastructure working!"
    end

    get '/battle' do
        "BATTLE TIME!!"
    end
    
    # start the server if ruby file executed directly
    run! if app_file == $0
end
