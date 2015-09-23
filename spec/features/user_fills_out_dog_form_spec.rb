require 'rails_helper'

feature 'view dog request form', %Q{
  As a user
  I want to visit the main page
  So that I can fill in what kind of dog I want
} do
  # Acceptance Criteria
  #- I can provide a breed
  #- I can provide a size
  #- I can provide a need to be good with children
  #- I can provide an age range
  #- I can provide a prefered gender
  #- I can specify if the dog must be fixed
  #- I must be presented with errors if I fill out the form incorrectly

    scenario 'visitor visits dog request page' do
      dog = FactoryGirl.create(:dog)

      visit root_path
      click_link "Find me a dog!"
      expect(page).to have_content("Dogs Matching:")
    end
end
