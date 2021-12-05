json.extract! post, :id, :title, :overview, :thumbnail, :content, :published, :created_at, :updated_at, :post_category_ids, :post_tag_ids
json.url post_url(post, format: :json)
