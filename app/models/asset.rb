class Asset < ActiveRecord::Base
  belongs_to :product_attribute
  has_one :asset_purpose
  has_one :asset_file_type
  has_one :asset_change_date
  has_many :asset_file_path, through: :asset_file
  has_many :asset_preview_path, through: :asset_file
  has_many :asset_thumb_path, through: :asset_file
end
