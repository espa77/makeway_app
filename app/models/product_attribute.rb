class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  has_one :dimension
  has_one :mkt_chn_data
  has_one :asset
end
