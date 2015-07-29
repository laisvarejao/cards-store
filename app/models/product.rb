class Product < ActiveRecord::Base

  validates :name, uniqueness: true
	validates :name, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 1}
	validates :image_url, format: {
		with: %r{\.(gif|jpg|png)\z}i,
		message: 'must be a URL for GIF, JPG or PNG image'
	}

end
