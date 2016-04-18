# Write your tests here!
require 'spec_helper.rb'

describe "GET '/' - Greeting Form" do
  it "Welcomes the user" do
    visit '/'
      expect(page.body).to include("Welcome!")
    end

  it "Has a greeting form with a user_name field" do
    visit '/'
      expect(page).to have_selector("form")
      expect(page).to have_field(:user_name)
    end
end

describe "POST '/greet' User Greeting" do
  it "Greets the user personally based on their input from previous field" do
    visit '/'
      fill_in(:user_name, :with => "Avi")
      click_button "Submit"
      
      expect(page).to have_text("Hi Avi, nice to meet you!")
    end
end
