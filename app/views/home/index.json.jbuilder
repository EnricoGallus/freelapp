# app/views/home/index.json.jbuilder
json.array! @latest_books, partial: 'api/v1/books/book', as: :book
json.array! @latest_blog_posts, partial: 'posts/post', as: :post
