require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!") # --The page method gives you a Capybara::Session object that
    # --represents the browser page the user would actually be looking at if they navigated to '/'
    # --(or whichever route was last passed to visit).
    # page responds to a lot of methods that represent actions a user could take on a
   # page, such as click_link, fill_in, and body.
   # The page.body method will dump out all of the HTML in the current page as a string.
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
end
