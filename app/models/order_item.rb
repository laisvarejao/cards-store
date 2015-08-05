class OrderItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def subtotal
    valid? ? (quantity * unit_price) : 0
  end

  def unit_price
    product.price
  end

end
