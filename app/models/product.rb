class Product < ActiveRecord::Base
  has_one :product_sku
  has_one :product_attributes
end
