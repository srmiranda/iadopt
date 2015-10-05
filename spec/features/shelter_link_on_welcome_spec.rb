require 'rails_helper'

feature 'user sees their shelter on main page', %{
  As a user,
  I want to create a shelter,
  And see its link appear on my welcome page.

  Acceptance Criteria
  [x] I must sign in and visit my welcome page
  [x] I must register a new shelter
  [x] I must see a success message about its creation
  [x] I must be brought to the shelter show page
  [x] Navigating to my welcome page will show a link to my new shelter

} do

  scenario 'visitor visits dog survey form' do
    user = FactoryGirl.create(:user)
    shelter = FactoryGirl.create(:shelter)

    visit root_path
    login(user)

    expect(page).to have_content('Welcome to iAdopt!')
    click_link 'Register A Shelter'

    expect(page).to have_content('Register A Shelter')
    register_shelter
    expect(page).to have_content('Launch Shelter')
    click_link "iAdopt"
    expect(page).to have_content('Manage Your Shelter(s):')
    expect(page).to have_content(user.shelters.first.name)
  end
end
