class Application < Sinatra::Base




 get '/' do
   #binding.pry
   erb :index
 end

 post '/greet' do
    erb :greet
 end

end
