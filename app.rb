class Application < Sinatra::Base
#old route
  get '/' do
    erb :index
  end


  #new route
  post '/greet' do
    erb :greet
  end
end
