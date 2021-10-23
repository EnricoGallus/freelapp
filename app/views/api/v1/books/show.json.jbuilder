# app/views/api/v1/show.json.jbuilder
json.partial! 'api/v1/books/book', book: @book
