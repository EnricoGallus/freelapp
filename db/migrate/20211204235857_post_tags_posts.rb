class PostTagsPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :post_tags_posts, id: false do |t|
      t.belongs_to :post
      t.belongs_to :post_tag
    end
  end
end
