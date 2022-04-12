require 'rails_helper'

RSpec.feature "Visitor can login successfully", type: :feature, js: true do

  before :each do

    @user = User.create(first_name: 'Joe', last_name: 'Blow', email: 'test@123.com', password: '123456', password_confirmation: '123456')

  end

  scenario "user login and be taken back to home page" do
    # Vist home page
    visit root_path

    click_on "Login"

    # Wait and check if user login form shows
    expect(page).to have_content 'Password'
    
    # Fill out login form
    fill_in "email",	with: "test@123.com" 
    fill_in "password",	with: "123456" 

    # submit form
    click_button "Login"

    # check if user is taken back to home screen
    expect(page).to have_content 'Products'

    # check if username is showing on the page
    expect(page).to have_content  "Joe Blow"

    save_screenshot
  end

end