require 'rails_helper'

feature 'user sees their shelter on main page', %{
  As a user,
  I want to create a shelter,
  And see its link appear on my welcome page.

  Acceptance Criteria
  [ ] I must sign in and visit my welcome page
  [ ] I must register a new shelter
  [ ] I must see a success message about its creation
  [ ] I must be brought to the shelter show page
  [ ] Navigating to my welcome page will show a link to my new shelter

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
    click_link "iAdopt"
    expect(page).to have_content('Manage Your Shelter(s):')
    expect(page).to have_content(user.shelters.first.name)
  end
end
