class AddEpisodeNoToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :episode_no, :integer,default: 0,null: false
  end
end
