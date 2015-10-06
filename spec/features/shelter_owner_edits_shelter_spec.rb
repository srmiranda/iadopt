require 'rails_helper'

feature 'shelter owner updates their shelter', %{
  As a User that owns a shelter,
  I want to update my information,
  So I can keep my shelter updated with any changes.

  Acceptance Criteria
  [ ] I should be able to edit my shelter details
  [ ] I should be able to update a new picture of my shelter

} do

  scenario 'shelter owner updates their shelter attributes' do
    user = FactoryGirl.create(:user)

    visit root_path
    login(user)

    expect(page).to have_content('Welcome to iAdopt!')
    click_link 'Register A Shelter'

    expect(page).to have_content('Register A Shelter')
    register_shelter
    expect(page).to have_content('Launch Shelter')
    visit root_path
    expect(page).to have_content('Manage Your Shelter(s):')
    expect(page).to have_content(user.shelters.first.name)
    click_link "Launch Shelter"

    expect(page).to have_content('Edit Shelter')
    click_link "Edit Shelter"
    expect(page).to have_content('Update Your Shelter')
    fill_in "City", with: "Whoville"
    click_button "Submit"
    expect(page).to have_content('Whoville')
  end
end
