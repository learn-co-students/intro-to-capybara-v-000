# Load RSpec and Capybara
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end
end

# Configure RSpec
RSpec.configure do |config|
  # Mixin the Capybara functionality into Rspec
  config.include Capybara::DSL
  config.order = 'default'
end

# Define the application we're testing
def app
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app
