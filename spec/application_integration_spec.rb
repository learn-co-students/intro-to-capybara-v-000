# Write your tests here!

require "spec_helper"

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page).to have_text("Welcome!")
  end

  it 'has a greeting form with a user_name field' do
    visit '/'
    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end

  describe "POST '/greet' - Greets the User"
    it 'greets the user based on their user_name' do
      visit'/'

      fill_in(:user_name, :with => "Avi")
      click_button "Submit"

      expect(page).to have_text("Hi Avi, nice to meet you!")
    end
end
