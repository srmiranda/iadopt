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
    breed "German Shepherd Dog"
    size "large"
    kids "true"
    age 5.0
    gender "male"
    fixed "true"
    shelter
  end

  factory :shelter do
    name "Launch Dog Shelter"
    address "123 Main St"
    city "Boston"
    state "MA"
    zip 90210
    phone "(508) 555-1234"
    url "www.google.com"
  end
end
