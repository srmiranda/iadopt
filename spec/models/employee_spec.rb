require 'rails_helper'

RSpec.describe Employee, type: :model do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:shelter) { FactoryGirl.create(:shelter) }

  it { should belong_to(:user) }
  it { should belong_to(:shelter) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:shelter_id) }

  it { should have_valid(:user_id).when(user.id) }
  it { should_not have_valid(:user_id).when(nil, "") }

  it { should have_valid(:shelter_id).when(shelter.id) }
  it { should_not have_valid(:shelter_id).when(nil, "") }
end
