class AddSourceUrlToDramas < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :source_url, :string
  end
end
