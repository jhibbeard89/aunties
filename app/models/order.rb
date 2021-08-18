class Order < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  # validates :quantity, presence: true, numericality: { less_than_or_equal_to: meal.order.quantity}

end
