class AddAsinToDramas < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :asin, :string
  end
end
