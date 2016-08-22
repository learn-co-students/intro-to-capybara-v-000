# defining the controller that will power this web application.
class Application < Sinatra::Base
  # --Below we tell our application to respond to HTTP GET requests to / by rendering the designated ERB template or HTML.
  # GET route at the / URL.
  get '/' do
    erb :index # --tells the application to render, or deliver to the user's browser, the file in views/index.erb.
    # --This is a Sinatra-provided functionality that renders ERB templates located in the views directory.
  end
  # New route to respond to the form submission
  post '/greet' do
    erb :greet
  end

end
