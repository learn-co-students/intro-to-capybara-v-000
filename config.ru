# Write your code here!

#this is the Rackup/Shotgun file that instructs the test suite on ahow to build the app.
#We must configure it to actually create the controller for testing/running.
require 'sinatra' #the actual library

require_relative './app' #the application/controller

run Application #run this thing.
