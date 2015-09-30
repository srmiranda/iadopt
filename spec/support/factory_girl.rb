require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    username "Sasquatch"
    password 'password'
    password_confirmation 'password'
  end

  factory :dog do
    name "Duke"
    breed "german shepard"
    size "medium"
    kids true
    age 5.0
    gender "m"
    fixed false
    shelter_id 23
  end
end
