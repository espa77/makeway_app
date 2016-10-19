class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.belongs_to :product_attribute, index: true
      t.string :asset_purpose
      t.string :asset_file_type
      t.date :asset_change_date

      t.timestamps null: false
    end
  end
end
