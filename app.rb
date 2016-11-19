class Application < Sinatra::Base
  # write your code here!

  get '/' do
    erb :index
  end

end

