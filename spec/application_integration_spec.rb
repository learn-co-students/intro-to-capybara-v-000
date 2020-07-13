require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  # New test
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")   #have something that the selector can find, called form, like a query seclector
    expect(page).to have_field(:user_name)  #find a form field name, has to match here!!, Apparently has to be a token as well.
  end
end

describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'   #tell it to visit the landing page

    fill_in(:user_name, :with => "Avi") #fill out the form like a user might do
    click_button "Submit" #submit it

    expect(page).to have_text("Hi Avi, nice to meet you!")  #then, the page you're looking at should say this text...
  end
end
