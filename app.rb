class Application < Sinatra::Base
  #old route from previous tests
  get '/' do
    erb :index
  end

  #New route to respond to the form submission
  post '/greet' do 
    erb :greet 
  end 
end 
