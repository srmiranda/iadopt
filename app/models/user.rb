class User < ActiveRecord::Base
  belongs_to :shelter
  has_many :employees
  has_many :shelters, through: :employees
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :username, presence: true, length: { maximum: 15 }
end
