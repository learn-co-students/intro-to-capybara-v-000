class Application < Sinatra::Base #transforms standard ruby class into sinatra controller
 
  get '/' do
    erb :index #tells the application to render/deliver to user's browswer, the file in views/index.erb; Sinatra-provided functionality that renders ERB templates
  end

  post '/greet' do 
    erb :greet
  end
end