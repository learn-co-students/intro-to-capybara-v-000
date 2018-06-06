ENV['SINATRA-ENV'] ||= "development"
ENV['RACK-ENV'] ||= "development"


require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA-ENV'])

require './app'
