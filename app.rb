require 'sinatra'
set :session_secret, 'super secret'

get '/' do
    "Hello Battle!"
end

get '/battle' do
    "It's battle time everybody!"
end