class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  # this  route responds to the form submission
  post '/greet' do
    erb :greet
  end
end