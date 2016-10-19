class Dimension < ActiveRecord::Base
  belongs_to :product_attributes
  has_one :height
  has_one :width
  has_one :weight

end
