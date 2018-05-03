class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :episode_name
      t.text :over_view
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
