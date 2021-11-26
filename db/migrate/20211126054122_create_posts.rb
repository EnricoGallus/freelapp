class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :overview
      t.string :thumbnail
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.boolean :published

      t.timestamps
    end
  end
end
