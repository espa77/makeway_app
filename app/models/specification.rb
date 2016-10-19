class Specification < ActiveRecord::Base
  belongs_to :mkt_chn_data
  has_one :spec_attribute
end
