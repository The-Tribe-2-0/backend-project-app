# puts "seeding...."

# # Creating another author
# author2 = Author.create(
#   name: "Emma Johnson",
#   email: "emma@example.com"
# )

# # Creating another category
# category2 = Category.create(
#     name: "Fantasy"
# )

# # Creating another book
# book2 = Book.create(
#     title: "The Dragon's Lair",
#     category_id: category2.id,
#     author_id: author2.id
# )

# # Creating more books, authors, and categories
# author3 = Author.create(
#   name: "John Smith",
#   email: "john@example.com"
# )

# category3 = Category.create(
#     name: "Mystery"
# )

# book3 = Book.create(
#     title: "The Mysterious Case",
#     category_id: category3.id,
#     author_id: author3.id
# )

# author4 = Author.create(
#   name: "Sarah Thompson",
#   email: "sarah@example.com"
# )

# category4 = Category.create(
#     name: "Romance"
# )

# book4 = Book.create(
#     title: "Love in Paris",
#     category_id: category4.id,
#     author_id: author4.id
# )

# puts 'done seeding'


puts "seeding...."

50.times do |n|
  # Creating authors
  author = Author.create(
    name: "Author #{n+1}",
    email: Faker::Internet.email
  )

  # Creating categories
  category = Category.create(
    name: "Category #{n+1}"
  )

  # Creating books
  book = Book.create(
    title: "Book #{n+1}",
    category_id: category.id,
    author_id: author.id
  )
end

puts 'done seeding'
