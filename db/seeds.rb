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
unless User.any?
  User.create!(email: 'enrico.gallus@gmail.com', password: 'JipKR_\'7C|Q', password_confirmation: 'JipKR_\'7C|Q')
end
