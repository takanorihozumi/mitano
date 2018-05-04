class AddSeasonCountToDramas < ActiveRecord::Migration[5.1]
  def change
    add_column :dramas, :season_count, :integer,default: 0,null: false
  end
end
