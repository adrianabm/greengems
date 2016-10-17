class Product < ApplicationRecord
  has_many :photos
  has_many :order_items
  default_scope { where(active: true) }

  def self.search(search)
    Product.where('name ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end
end
