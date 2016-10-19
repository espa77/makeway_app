class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.belongs_to :mkt_chn_data, index: true
      t.string :purpose_attribute_set

      t.timestamps null: false
    end
  end
end
