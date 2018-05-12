class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :impression, foreign_key: true

      t.timestamps
      t.index [:user_id, :impression_id], unique: true

    end
  end
end
