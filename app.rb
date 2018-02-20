class Application < Sinatra::Base
#==================routes================== 
  # index
  get "/" do
  	erb :index
  end
  
  post "/greet" do
  	erb :greet
  end 
#========================================== 
end
