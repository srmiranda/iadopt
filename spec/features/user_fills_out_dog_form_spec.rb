require 'rails_helper'

feature 'view dog request form', %{
  As a user
  I want to visit the main page
  So that I can fill in what kind of dog I want

  Acceptance Criteria
  [] I can provide a breed
  [] I can provide a size
  [] I can provide a need to be good with children
  [] I can provide an age range
  [] I can provide a prefered gender
  [] I can specify if the dog must be fixed
  [] I must be presented with errors if I fill out the form incorrectly
} do

  scenario 'visitor visits dog request page' do
    dog = FactoryGirl.create(:dog)
    user = FactoryGirl.create(:user)

    visit root_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_content('Welcome to iAdopt!')
  end

  scenario 'user fails to fill out form correctly' do

  end
end
