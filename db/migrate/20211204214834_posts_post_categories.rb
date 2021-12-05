class PostsPostCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :post_categories_posts, id: false do |t|
      t.belongs_to :post
      t.belongs_to :post_category
    end
  end
end
