class RenameImpressoinColumnToImpressions < ActiveRecord::Migration[5.1]
  def change
   rename_column :impressions, :impressoin, :impression
  end
end
