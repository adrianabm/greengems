class Product < ApplicationRecord
  has_many :photos
  has_many :order_items

  default_scope { where(active: true) }


end
