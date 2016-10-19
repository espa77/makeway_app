class Product < ActiveRecord::Base
  has_one :product_sku
  has_one :brand, through: :product_attributes
  has_one :product_line, through: :product_attributes
  has_one :color, through: :product_attributes
  has_one :upc, through: :product_attributes
  has_one :installation_type, through: :product_attributes
  has_one :nominal_power_type, through: :product_attributes
  has_one :nominal_size, through: :product_attributes
  has_one :factory, through: :product_attributes
  has_one :model_year, through: :product_attributes
  has_one :related_products, through: :product_attributes
end
