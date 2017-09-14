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
