class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  #Remember it responds to form submission. Therefore, post
  post '/greet' do
    erb :greet
  end
end
