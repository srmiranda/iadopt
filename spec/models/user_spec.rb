require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:username) }

  it { should have_valid(:username).when("testing123") }
  it { should_not have_valid(:username).when(nil, "") }

  it { should have_valid(:email).when("shawn@gmail.com") }
  it { should_not have_valid(:email).when(nil, "") }

end
