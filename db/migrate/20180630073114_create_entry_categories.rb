class CreateEntryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_categories do |t|
      t.references :entry, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
