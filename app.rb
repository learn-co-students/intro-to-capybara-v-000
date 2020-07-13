class Application < Sinatra::Base
  # Old route from previous tests
  get '/' do
    erb :index
  end

  post '/greet' do
    erb :greet
  end
end
