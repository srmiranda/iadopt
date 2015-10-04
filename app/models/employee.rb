class Employee < ActiveRecord::Base
  belongs_to :user
  belongs_to :shelter

  validates :shelter_id, presence: true
  validates :user_id, presence: true
end
