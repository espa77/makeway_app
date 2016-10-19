class CreateSpecAttributes < ActiveRecord::Migration
  def change
    create_table :spec_attributes do |t|
      t.belongs_to :specification, index: true
      t.string :attribute_id
      t.string :rank
      t.string :spec_area
      t.string :spec_name
      t.string :spec_value

      t.timestamps null: false
    end
  end
end
