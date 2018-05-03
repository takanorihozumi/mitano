class CreateImpressions < ActiveRecord::Migration[5.1]
  def change
    create_table :impressions do |t|
      t.integer :impression_type
      t.text :impressoin
      t.integer :evaluation
      t.boolean :is_secret
      t.references :user, foreign_key: true
      t.references :drama, foreign_key: true
      t.references :season, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
