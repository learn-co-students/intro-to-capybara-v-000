require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end
	it 'shows the current year' do
		year = Time.now.year
    visit '/'
    expect(page.body).to include("The year is: #{year}")
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
