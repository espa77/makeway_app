class SpecAttribute < ActiveRecord::Base
  belongs_to :specification
  has_one :attribute_id
  has_one :rank
  has_one :spec_area
  has_one :spec_name
  has_one :spec_area
  has_one :spec_value
end
