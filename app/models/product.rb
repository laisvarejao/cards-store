class Product < ActiveRecord::Base

  has_many :order_items

  before_destroy :ensure_not_referenced_by_any_order_item

  validates :name, uniqueness: true
  validates :name, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :image_url, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPG or PNG image'
  }

  private

    def ensure_not_referenced_by_any_order_item
      if order_items.empty?
        return true
      else
        errors.add(:base, 'Order Items present.')
        return false
      end
    end

end
