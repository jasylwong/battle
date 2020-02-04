require 'sinatra'

class Battle < Sinatra::Base
    get '/' do
        erb(:index)
    end

    get '/names' do
        erb(:index)
    end

    get '/battle' do
        params[:]
    end
    
    # start the server if ruby file executed directly
    run! if app_file == $0
end
