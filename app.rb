class Application < Sinatra::Base
  # Write your code here!

  get '/' do
     erb :index
   end

   post '/greet' do
     @data=params
     erb :greet
   end

 end
