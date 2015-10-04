class Shelter < ActiveRecord::Base
  belongs_to :user

  has_many :dogs
  has_many :employees
  has_many :users, through: :employees

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :zip, length: { is: 5 }
  validates :zip, numericality: { only_integer: true }
  validates :phone, presence: true
  validates :user_id, presence: true
end
