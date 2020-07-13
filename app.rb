class Application < Sinatra::Base

  post '/greet' do
    erb :greet
  end

  get '/' do
    erb :index
  end

end
