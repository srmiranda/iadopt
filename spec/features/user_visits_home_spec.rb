require 'rails_helper'

feature 'user signs in', %{
  As a current or new user,
  I want to visit the home page of iAdopt,
  So that I can sign in or sign up to this website.
} do
  scenario 'visit home page and sign in' do
    user = FactoryGirl.create(:user)

    visit root_path

    expect(page).to have_link('Sign In')

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    expect(page).to have_content('All About Us')
  end

  scenario 'visit home page and sign up' do
    visit root_path

    expect(page).to have_link('Sign Up')

    click_link 'Sign Up'

    expect(page).to have_content('Email')
    expect(page).to have_content('Username')
    expect(page).to have_content('Password')

    fill_in 'Email', with: 'testuser@gmail.com'
    fill_in 'Username', with: 'Testuser'
    fill_in 'Password', with: 'testtest'
    fill_in 'Password confirmation', with: 'testtest'
    click_button 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('All About Us')
  end
end
