class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.text :heading
      t.text :trailer

      t.timestamps
    end
  end
end
