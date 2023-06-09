puts "Seeding...."
# Array of additional actual book titles
additional_book_titles = [
  "The Handmaid's Tale", "The Hobbit", "Slaughterhouse-Five", "The Lord of the Flies", "The Grapes of Wrath",
  "The Color Purple", "Beloved", "Catch-22", "The Bell Jar", "Lord of the Rings",
  "The Secret History", "The Sun Also Rises", "The Old Man and the Sea", "The Sound and the Fury", "Invisible Man",
  "The Stranger", "Catch-22", "To the Lighthouse", "A Clockwork Orange", "Animal Farm",
  "Fahrenheit 451", "A Farewell to Arms", "The Handmaid's Tale", "The Road", "Beloved",
  "The Cider House Rules", "The Stand", "The Book Thief", "Middlesex", "The Secret Life of Bees",
  "The Poisonwood Bible", "The Help", "The Lovely Bones", "Room", "The Fault in Our Stars",
  "The Goldfinch", "The Maze Runner", "The Girl with the Dragon Tattoo", "Gone Girl", "The Hunger Games",
  "The Giver", "The Curious Incident of the Dog in the Night-Time", "The Perks of Being a Wallflower", "The Catcher in the Rye",
  "The Great Gatsby", "To Kill a Mockingbird", "Pride and Prejudice", "1984", "Harry Potter and the Philosopher's Stone"
]

# Array of additional actual author names
additional_author_names = [
  "Margaret Atwood", "J.R.R. Tolkien", "Kurt Vonnegut", "William Golding", "John Steinbeck",
  "Alice Walker", "Toni Morrison", "Joseph Heller", "Sylvia Plath", "J.R.R. Tolkien",
  "Donna Tartt", "Ernest Hemingway", "Ernest Hemingway", "William Faulkner", "Ralph Ellison",
  "Albert Camus", "Joseph Heller", "Virginia Woolf", "Anthony Burgess", "George Orwell",
  "Ray Bradbury", "Ernest Hemingway", "Margaret Atwood", "Cormac McCarthy", "Toni Morrison",
  "John Irving", "Stephen King", "Markus Zusak", "Jeffrey Eugenides", "Sue Monk Kidd",
  "Barbara Kingsolver", "Kathryn Stockett", "Alice Sebold", "Emma Donoghue", "John Green",
  "Donna Tartt", "James Dashner", "Stieg Larsson", "Gillian Flynn", "Suzanne Collins",
  "Lois Lowry", "Mark Haddon", "Stephen Chbosky", "J.D. Salinger", "F. Scott Fitzgerald",
  "Harper Lee", "Jane Austen", "George Orwell", "J.K. Rowling"
]

# Generate additional 50 books with actual authors and publication years
(51..100).each do |n|
  author = Author.create(
    name: additional_author_names.sample,
    email: Faker::Internet.email
  )

  book = Book.create(
    title: additional_book_titles.sample,
    author_id: author.id,
    year_published: rand(1800..2023)
  )
end

puts "Done seeding."
