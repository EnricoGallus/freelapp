# app/views/home/index.json.jbuilder
json.array! @latest_book_review, partial: 'api/v1/books/book', as: :book
