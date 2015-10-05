require 'rails_helper'

feature 'view shelter creation form', %{
  As a shelter,
  I want to create a shelter,
  So I can list all of my dogs for adoption.

  Acceptance Criteria
  [ ] I should be brought to a form to enter my information
  [ ] I must enter a name, address, city, state, zip and phone number.
  [ ] I can optionally enter a url link to a picture of my shelter.
  [ ] I can optionally enter a website to my shelter and an email address.
  [ ] I should see a success or failure message for the form entry.
  [ ] I must be brought to my shelter show page after the shelter is created.
} do

  scenario 'visitor visits dog survey form' do
    user = FactoryGirl.create(:user)

    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_content('Welcome to iAdopt!')
    click_link 'Register A Shelter'

    expect(page).to have_content('Register A Shelter')
    fill_in 'Name', with: "Launch Shelter"
    fill_in 'Address', with: "123 Main St."
    fill_in 'City', with: "Anywhereville"
    fill_in 'State', with: "MA"
    fill_in 'Zip', with: 11111
    fill_in 'Phone', with: "1 (617) 555-1234"
    fill_in 'Website URL (optional)', with: "www.google.com"
    fill_in 'Contact Email (optional)', with: "test@gmail.com"
    u = "http://www.avsforum.com/photopost/data/2277869/9/9f/9f50538d_test.jpeg"
    fill_in 'Picture (optional)', with: u
    click_button "Submit"
    expect(page).to have_content('Launch Shelter')
  end
end
