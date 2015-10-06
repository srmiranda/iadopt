require 'rails_helper'

feature 'shelter owner updates a dog', %{
  As a shelter owner,
  I want to update a dog,
  So I can fix any changes or mistakes listed.

  Acceptance Criteria
  [ ] I should be able to edit any of the options of a dog
  [ ] I should see a success message or failure after submitting them
  [ ] I should see the change take affect on the shelter details page.

} do

  scenario 'shelter owner adds dog from shelter page' do
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

    expect(page).to have_content('Add A Dog')
    click_link 'Add A Dog'
    register_dog
    click_button "Submit"

    click_link "Edit"
    expect(page).to have_content('Edit Dog Profile')

    fill_in "Name", with: "Bob"
    select "large", from: 'Size'
    click_button "Submit"
    expect(page).to have_content("Dog successfully updated.")
    expect(page).to have_content("Bob")
  end
end
