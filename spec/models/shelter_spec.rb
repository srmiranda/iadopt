require 'rails_helper'

RSpec.describe Shelter, type: :model do
  let!(:user) { FactoryGirl.create(:user) }

  it { should belong_to(:user) }
  it { should have_many(:employees) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:user_id) }

  it { should have_valid(:name).when("Launch Dog Shelter") }
  it { should_not have_valid(:name).when(nil, "") }

  it { should have_valid(:address).when("123 Main St.") }
  it { should_not have_valid(:address).when(nil, "") }

  it { should have_valid(:city).when("Boston") }
  it { should_not have_valid(:city).when(nil, "") }

  it { should have_valid(:state).when("MA") }
  it { should_not have_valid(:state).when(nil, "") }

  it { should have_valid(:zip).when(90210) }
  it { should_not have_valid(:zip).when(nil, "") }

  it { should have_valid(:phone).when("1 (617) 555-1234") }
  it { should_not have_valid(:phone).when(nil, "") }

  it { should have_valid(:url).when("www.google.com") }

  it { should have_valid(:email).when("test@gmail.com") }

  it { should have_valid(:website).when("http://www.amazon.com") }

  it { should have_valid(:user).when(user) }
end
