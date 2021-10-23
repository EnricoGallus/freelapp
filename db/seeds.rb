# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   User.all.each do |u|
#     10.times do |i|
#       u.books.create(title: "To Do Item #{i + 1} for #{u.email}", complete: i % 3 =us= 0 ? true : false)
#     end
#   end

2.times do |i|
  User.create(email: "dashboard-#{i + 1}@example.com", password: "password", password_confirmation: "password")
end

10.times do |i|
  Book.create(name: "Book #{i + 1}", image_url: "https://someurl.for.book.#{i + 1}.com")
end
