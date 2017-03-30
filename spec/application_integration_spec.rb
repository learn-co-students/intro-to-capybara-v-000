require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  # another test

  it 'talks about what it can do' do
    visit '/'
    expect(page).to have_selector("h2")
    expect(page.body).to include("If you tell me your name, I can say hi!")
  end
  # New test
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end

  it 'greets the user personally based on their user_status in the form' do
    visit '/'

    fill_in(:user_status, :with =>"Not bad")
    click_button "Submit"

    expect(page.body).to include("Not bad? Me too.")
  end
end
