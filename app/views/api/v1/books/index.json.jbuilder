# app/views/api/v1/index.json.jbuilder
json.array! @books, partial: 'api/v1/books/book', as: :book
