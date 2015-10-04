require 'spec_helper'

RSpec.describe Dog do

  context 'questions' do
    let!(:shelter) { FactoryGirl.create(:shelter) }
    let!(:dog) { FactoryGirl.create(:dog, shelter: shelter) }

    it { should belong_to(:shelter) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:shelter_id) }

    it "should have a name" do
      expect(dog.name).to eq("Duke")
      expect(dog.name).to_not eq("Shawn")
    end

    it "should have a breed" do
      expect(dog.breed).to eq("German Shepherd Dog")
      expect(dog.breed).to_not eq("mixed")
    end

    it "should have a size" do
      expect(dog.size).to eq("large")
      expect(dog.size).to_not eq("")
    end

    it "should be true or false for kids" do
      expect(dog.kids).to be(true)
      expect(dog.kids).to_not be(false)
    end

    it "should have an age" do
      expect(dog.age).to eq(5)
      expect(dog.age).to_not eq(10)
    end

    it "should have a gender" do
      expect(dog.gender).to eq("male")
      expect(dog.gender).to_not eq("female")
    end

    it "should be true or false for fixed" do
      expect(dog.fixed).to be(true)
      expect(dog.fixed).to_not be(false)
    end

    it "should contain a shelter id" do
      expect(dog.shelter).to eq(shelter)
      expect(dog.shelter).to_not eq(nil)
    end
  end

end
