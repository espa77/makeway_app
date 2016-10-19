class Specification < ActiveRecord::Base
  belongs_to :mkt_chn_data
  has_one :purpose_attribute_set
  has_one :attribute_id, through: :spec_attribute
  has_one :rank, through: :spec_attribute
  has_one :spec_area, through: :spec_attribute
  has_one :spec_name, through: :spec_attribute
  has_one :spec_area, through: :spec_attribute
  has_one :spec_value, through: :spec_attribute
end
