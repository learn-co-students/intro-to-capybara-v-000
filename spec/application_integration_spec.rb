require 'spec_helper'

describe "GET '/' - Greeting Form" do

  it 'responds with a 200 status code' do
    visit '/'
    expect(page.status_code).to eq(200)
  end 
  
  it 'welcomes the user' do 
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it 'has a greeting form' do 
    visit '/'
    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST" '/greet - User Greeting' do
  it 'responds with a 200 status code' do
    visit '/'
    expect(page.status_code).to eq(200)
  end
  
  it 'greets the user personally based on submitted user_name' do
    visit '/'
    fill_in(:user_name,:with => "Justin")
    click_button "Submit"
    expect(page).to have_text("Hi Justin, nice to meet you!")
  end
end