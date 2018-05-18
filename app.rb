class Application < Sinatra::Base
  # Write your code here!
  get('/'){
    erb :index
  }

  post '/greet' do
    erb :greet
  end
end
