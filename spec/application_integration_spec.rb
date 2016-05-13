require 'spec_helper'
describe "GET '/' - Greeting Form" do
  it 'welcome user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it 'greeting form with user_name field' do
    visit '/'
    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - User Greeting" do
  it 'greets user based on their user_name input' do
    visit '/'
    fill_in(:user_name, :with => "Avi")
    click_button "Submit"
    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end
