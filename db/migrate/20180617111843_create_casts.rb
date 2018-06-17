class CreateCasts < ActiveRecord::Migration[5.1]
  def change
    create_table :casts do |t|
      t.string :name
      t.text :over_view
      t.string :image_url
      t.integer :movie_id
      t.string :birthday

      t.timestamps
    end
  end
end
