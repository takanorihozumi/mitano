class RenameSeasonCountColumnToDramas < ActiveRecord::Migration[5.1]
  def change
   rename_column :dramas, :season_count, :seasons_count
  end
end
