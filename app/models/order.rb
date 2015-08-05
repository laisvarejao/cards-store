class Order < ActiveRecord::Base
  
  belongs_to :order_status
  has_many :order_items, dependent: :destroy
  before_create :set_order_status
  before_save :update_total

  # validates :buyer_email, :shipping_address, presence: true

  def total
  	order_items.collect { |order_item| order_item.subtotal }.sum
  end

private

  def set_order_status
  	self.order_status_id = 1
  end

  def update_total
  	self[:total] = total
  end

end
