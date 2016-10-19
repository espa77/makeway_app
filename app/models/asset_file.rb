class AssetFile < ActiveRecord::Base
  belongs_to :asset
  has_many :asset_file_path
  has_many :asset_preview_path
  has_many :asset_thumb_path
end
