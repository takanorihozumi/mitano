class CreateDramas < ActiveRecord::Migration[5.1]
  def change
    create_table :dramas do |t|
      t.string :title
      t.text :over_view

      t.timestamps
    end
  end
end
