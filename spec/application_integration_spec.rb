require 'spec_helper'

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    vist '/'
    expect(page.body).to include("Welcome!")
  end
end
