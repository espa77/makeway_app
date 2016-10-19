class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  has_one :brand
  has_one :product_line
  has_one :color
  has_one :upc
  has_one :installation_type
  has_one :nominal_power_type
  has_one :nominal_size
  has_one :base_model
  has_one :factory
  has_one :model_year
  has_one :related_products
  has_one :height, through: :dimension
  has_one :width, through: :dimension
  has_one :weight, through: :dimension
  has_one :msrp, through: :mkt_chn_data
  has_one :channel_name, through: :mkt_chn_data
  has_one :product_name, through: :mkt_chn_data
  has_one :product_description, through: :mkt_chn_data
  has_one :last_update_on_sku, through: :mkt_chn_data
  has_one :last_update_on_feature, through: :mkt_chn_data
  has_one :asset_purpose, through: :asset
  has_one :asset_file_type, through: :asset
  has_one :asset_change_date, through: :asset
end
