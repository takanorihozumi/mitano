class AddCategoryToDramas < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :category, :int
  end
end
