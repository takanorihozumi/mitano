class AddSourceUrlToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :source_url, :string
  end
end
