class CreateBookReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :book_reviews do |t|
      t.string :title
      t.string :description
      t.integer :score
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
