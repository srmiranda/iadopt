

require 'rails_helper'

feature 'shelter owner adds a dog', %{
  As a shelter owner,
  I want to add a dog,
  So that people can have a chance to adopt it.

  Acceptance Criteria
  [x] I must visit my shelter page
  [x] I must fill out the add a dog form
  [x] I should see a success message or failure after submitting
  [x] I must see that dog listed on my shelter show page afterwards

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
    click_link user.shelters.first.name

    expect(page).to have_content('Add A Dog')
    click_link 'Add A Dog'
    register_dog
    click_button "Submit"
    expect(page).to have_content('Dog added successfully!')
  end

  scenario 'shelter owner submits a blank form' do
    user = FactoryGirl.create(:user)

    visit root_path
    login(user)
    click_link 'Register A Shelter'
    register_shelter
    click_link 'Add A Dog'
    click_button 'Submit'
    expect(page).to have_content("Name can't be blank, Size can't be blank,
      Kids is not included in the list, Age can't be blank, Gender can't be
      blank, Fixed is not included in the list")
  end
end
