class Application < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/greet' do
    @user = params[:user_name]
    erb :greet
  end
end
