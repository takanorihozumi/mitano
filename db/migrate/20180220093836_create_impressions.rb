class CreateImpressions < ActiveRecord::Migration[5.1]
  def change
    create_table :impressions do |t|
      t.string :title
      t.integer :season
      t.integer :episode
      t.integer :evaluation
      t.boolean :netabare
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
