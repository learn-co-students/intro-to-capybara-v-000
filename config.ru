# Write your code here!
require 'sinatra'
require_relative './app'

run Application

# In a basic application like this example, our config.ru requires the sinatra gem. It then require_relatives the required file app.rb that defines our main Application controller. Finally, we run our Application controller to start our web application.

