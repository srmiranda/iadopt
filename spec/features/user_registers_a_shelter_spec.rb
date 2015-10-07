require 'rails_helper'

feature 'view shelter creation form', %{
  As a user,
  I want to create a shelter,
  So I can list all of my dogs for adoption.

  Acceptance Criteria
  [x] I should be brought to a form to enter my information
  [x] I must enter a name, address, city, state, zip and phone number.
  [x] I can optionally enter a url link to a picture of my shelter.
  [x] I can optionally enter a website to my shelter and an email address.
  [x] I should see a success or failure message for the form entry.
  [x] I must be brought to my shelter show page after the shelter is created.
} do

  scenario 'visitor visits dog survey form' do
    user = FactoryGirl.create(:user)

    visit root_path
    login(user)

    expect(page).to have_content('Welcome to iAdopt!')
    click_link 'Register A Shelter'
    expect(page).to have_content('Register A Shelter')
    register_shelter
    expect(page).to have_content('Launch Shelter')
  end
end
