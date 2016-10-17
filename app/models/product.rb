class Product < ApplicationRecord
  has_many :photos
  has_many :order_items

  default_scope { where(active: true) }

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
