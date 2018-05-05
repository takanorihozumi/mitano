class AddSeasonNoToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :season_no, :integer,default: 0,null: false
  end
end
