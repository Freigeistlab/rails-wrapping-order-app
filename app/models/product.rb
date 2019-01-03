class Product < ApplicationRecord
  belongs_to :product_group
  has_many :order_items

  default_scope { where(active: true) }
end
