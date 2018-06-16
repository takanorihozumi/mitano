class CreateArticleContents < ActiveRecord::Migration[5.1]
  def change
    create_table :article_contents do |t|
      t.references :article, foreign_key: true
      t.references :drama, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
