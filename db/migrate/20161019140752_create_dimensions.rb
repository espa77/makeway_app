class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.belongs_to :product_attribute, index: true
      t.string :height, index: true
      t.string :width, index: true
      t.string :weight, index: true

      t.timestamps null: false
    end
  end
end
