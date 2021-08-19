class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :meal_name, :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true, length: { maximum: 255 }
end
