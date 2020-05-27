class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  post '/greet' do
    #raise params.inspect
    @user_name = params["user_name"]

    erb :greet
  end
end
