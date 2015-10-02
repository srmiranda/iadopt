require 'rails_helper'

feature 'view dog request form', %{
  As a user
  I want to click the find a dog button
  So that I can fill out a form and find dogs.

  Acceptance Criteria
  [x] I must visit the main page
  [x] I must sign in
  [x] I must click the find a dog button
  [x] I should be directed to a survey form
  [x] I can provide a breed
  [x] I can provide a size
  [x] I can provide a need to be good with children
  [x] I can provide a maximum age
  [x] I can provide a prefered gender
  [x] I can specify if the dog must be fixed
  [x] I must be presented with errors if I fill out the form incorrectly
  [] I must see a list of matching dogs after submission
} do

  scenario 'visitor visits dog survey form' do
    user = FactoryGirl.create(:user)

    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_content('Welcome to iAdopt!')
    click_link 'Find A Dog'

    expect(page).to have_content('Find the Perfect Pet')
    select "German Shepherd Dog", from: "dog[breed]"
    select "Large", from: "dog[size]"
    choose('kidtest')
    fill_in 'dog[age]', with: 5.0
    choose('sextest')
    choose('fixedtest')
    click_button "Submit"
  end
end
