class Application < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    greet.erb
  end

end
