require 'spec_helper'

describe "Get '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end

  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => 'Adam')
    click_button "Submit"

    expect(page).to have_text("Hi Adam, nice to meet you!")
  end
end

