require 'rails_helper'

feature 'shelter owner deletes their shelter', %{
  As a User that owns a shelter,
  I want to delete my shelter,
  So I can stop any further use on this app.

  Acceptance Criteria
  [ ] I should be able to delete my shelter.
  [ ] I should see a success message or failure after submitting them.

} do

  scenario 'shelter owner deletes their shelter' do
    user = FactoryGirl.create(:user)

    visit root_path
    login(user)

    expect(page).to have_content('All About Us')
    click_link 'Register A Shelter'

    expect(page).to have_content('Register A Shelter')
    register_shelter
    expect(page).to have_content('Launch Shelter')
    visit root_path
    expect(page).to have_content('Manage Your Shelter(s):')
    expect(page).to have_content(user.shelters.first.name)
    click_link "Launch Shelter"

    expect(page).to have_content('Delete Shelter')
    click_link "Delete Shelter"
  end
end
