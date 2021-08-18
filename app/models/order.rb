class Order < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
