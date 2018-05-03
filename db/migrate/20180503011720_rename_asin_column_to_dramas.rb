class RenameAsinColumnToDramas < ActiveRecord::Migration[5.1]
  def change
    rename_column :dramas, :asin, :image_url
  end
end
