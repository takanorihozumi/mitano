class AddSourceUrlToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :source_url, :string
  end
end
