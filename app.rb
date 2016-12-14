class Application < Sinatra::Base
  # write your code here!
  get '/' do
    erb :index
  end

  # New route to respond to the form submission
post '/greet' do
  erb :greet
end

end


# The line erb :index tells the application to render, or deliver to the user's browser, the file in views/index.erb. This is a Sinatra-provided functionality that renders ERB templates located in the views directory.
