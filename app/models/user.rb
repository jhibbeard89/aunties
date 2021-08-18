class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :meals
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

end
