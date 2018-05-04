class RenameEpisodeCountColumnToSeasons < ActiveRecord::Migration[5.1]
  def change
    rename_column :seasons, :episode_count, :episodes_count
  end
end
