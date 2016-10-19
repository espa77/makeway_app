class MktChnData < ActiveRecord::Base
  belongs_to :product_attributes
  has_one :specification
end
