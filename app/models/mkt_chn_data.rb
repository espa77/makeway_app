class MktChnData < ActiveRecord::Base
  belongs_to :product_attributes
  has_one :msrp
  has_one :channel_name
  has_one :product_name
  has_one :product_description
  has_one :last_update_on_sku
  has_one :last_update_on_feature
  has_one :purpose_attribute_set, through: :specification
end
