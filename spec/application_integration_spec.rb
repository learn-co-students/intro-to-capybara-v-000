require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'Welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - Greet User" do
  it 'greets the user based on their user_name submitted in the form' do
    visit '/'

    fill_in(:user_name, :with => "Joe")
    click_button "Submit"

    expect(page).to have_text("Hi Joe, nice to meet you!")
  end
end
