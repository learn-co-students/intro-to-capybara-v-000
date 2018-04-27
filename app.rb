class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  post '/greet' do
    erb :greet
  end

# =======
# >>>>>>> 05344dc35af08d2b6e7502f4d54fc5c84b461126
end
