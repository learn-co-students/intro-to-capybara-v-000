class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  #respond to form submit
  post '/greet' do
    erb :greet
  end

end
