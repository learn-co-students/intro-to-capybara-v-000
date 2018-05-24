require 'sinatra'
class App < Sinatra::Base
 
  get '/' do
    erb :index
  end
 
  get '/greet' do
    erb :greet
  end

end