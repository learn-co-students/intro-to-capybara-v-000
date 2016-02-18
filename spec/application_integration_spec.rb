# Write your tests here!
require 'spec_helper'

describe "GET '/' - Greeting form" do
  it "welcomes the user" do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it "has a greeting form with a user_name field" do
    visit '/'

    expect(page).to have_selector("form")
    expect(page). to have_field(:user_name)
  end
end

describe "GET '/greet' - User Greeting" do
  it "greets the user personally based on their user_name in the form" do
    visit '/'

    fill_in(:user_name, :with => "David")
    click_button "Submit"

    expect(page).to have_text("Hi David, nice to meet you!")
  end
end
