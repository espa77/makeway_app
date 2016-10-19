class Asset < ActiveRecord::Base
  belongs_to :product_attribute
  has_many :asset_files
end
