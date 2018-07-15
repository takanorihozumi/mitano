class CreateWatchingStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :watching_statuses do |t|
      t.references :user, foreign_key: true
      t.references :drama, foreign_key: true
      t.references :season, foreign_key: true
      t.references :episode, foreign_key: true
      t.integer :watching_type
      t.integer :status

      t.timestamps
      t.index [:user_id, :drama_id]
      t.index [:user_id, :season_id]
      t.index [:user_id, :episode_id]
    end
  end
end
