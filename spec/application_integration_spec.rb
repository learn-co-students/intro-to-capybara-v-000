# Write your tests here!
require 'spec_helper'

describe "GET '/' - Greeting Form"  do 
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

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
end


#When a user visits '/'
  #they should see a greeting
  #they should see a form with a name field
 
#When a user submits the greeting form
  #they should fill in the name with "Avi"
  #they should click submit
  #they should see "Hi Avi, it's nice to meet you!"