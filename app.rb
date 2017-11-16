class Application < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/greet' do
    erg :greet
  end

end
