require 'rails_helper'

feature 'shelter owner deletes a dog', %{
  As a shelter owner,
  I want to destroy a dog listing,
  So that it can be removed from my list when adopted.

  Acceptance Criteria
  [ ] I should be able to delete any dog listing of my list
  [ ] I should see a success message or failure after the destroy
  [ ] I should see the change take affect on the shelter details page.

} do

  scenario 'shelter owner deletes dog from shelter page' do
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

    click_link "Remove"
    expect(page).to have_content("Dog removed successfully.")
    expect(page).to_not have_content('Duke')
  end
end
