# Write your tests here!
require 'spec_helper'

describe "GET '/' - Greeting Form" do
  before(:each) do
    visit '/'
  end
  it "displays the index file" do
    expect(page.body).to eq(File.read('views/index.erb'))
  end
  it "welcomes the user" do
    expect(page.body).to include("Welcome!")
  end

  it "displays a 'name:' field" do
    expect(page.body).to include("Name:")
  end

  it "has a form and a user_name field" do
    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - User Greeting" do
  it "displays the user's input user_name" do
    visit '/'
    fill_in(:user_name, :with=>"Thteven")
    click_button "Submit"

    expect(page).to have_text("Hi Thteven, nice to meet you!")
  end
end
