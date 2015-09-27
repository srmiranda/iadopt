class Dog < ActiveRecord::Base
  belongs_to :shelter

  validates :name, presence: true
  validates :breed, presence: true
  validates :size, presence: true
  validates :kids, inclusion: { in: [true, false] }
  validates :age, presence: true
  validates :gender, presence: true
  validates :fixed, inclusion: { in: [true, false] }
  validates :shelter_id, presence: true
end
