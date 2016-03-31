# Write your tests here!
require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to be
    include("Welcome!")
  end

  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to be
    have_selector("form")
    expect(page).to be
    have_field(:user_name)
  end

end

describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Bree")
    click_button "Submit"

    expect(page).to be
    have_text("Hi Bree, nice to meet you!")
  end
end
