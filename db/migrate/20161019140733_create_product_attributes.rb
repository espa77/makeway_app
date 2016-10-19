class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.belongs_to :product, index:true
      t.string :brand
      t.string :product_line
      t.string :color
      t.integer :upc
      t.string :installation_type
      t.string :nominal_power_type
      t.string :nominal_size
      t.integer :base_model
      t.string :factory
      t.date :model_year
      t.string :related_products

      t.timestamps null: false
    end
  end
end
