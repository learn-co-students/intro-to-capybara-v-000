class Application < Sinatra::Base
    get '/' do
      erb :index
    end

    #for now only repsonds to /, write below to respond to /greet

    post '/greet' do
      erb :greet
    end

end
