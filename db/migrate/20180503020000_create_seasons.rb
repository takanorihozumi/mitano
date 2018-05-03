class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.text :over_view
      t.integer :episode_count
      t.references :drama, foreign_key: true

      t.timestamps
    end
  end
end
