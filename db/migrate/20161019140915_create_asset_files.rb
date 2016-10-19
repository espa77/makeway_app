class CreateAssetFiles < ActiveRecord::Migration
  def change
    create_table :asset_files do |t|
      t.belongs_to :asset, index: true
      t.string :asset_file_path
      t.string :asset_preview_path
      t.string :asset_thumb_path

      t.timestamps null: false
    end
  end
end
