class CreateMktChnData < ActiveRecord::Migration
  def change
    create_table :mkt_chn_data do |t|
      t.belongs_to :product_attribute, index: true
      t.string :msrp
      t.string :channel_name
      t.string :product_name
      t.text :product_description
      t.date :last_update_on_sku
      t.date :last_update_on_feature

      t.timestamps null: false
    end
  end
end
