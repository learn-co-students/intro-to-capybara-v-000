# Load RSpec and Capybara
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

# Configure RSpec
RSpec.configure do |config|
  config.include Capybara::DSL
  config.order = 'default'
end

# Define the application we're testing
def app
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app
