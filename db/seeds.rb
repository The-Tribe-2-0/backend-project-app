# puts "Seeding...."
# # Array of additional actual book titles
# additional_book_titles = [
#   "The Handmaid's Tale", "The Hobbit", "Slaughterhouse-Five", "The Lord of the Flies", "The Grapes of Wrath",
#   "The Color Purple", "Beloved", "Catch-22", "The Bell Jar", "Lord of the Rings",
#   "The Secret History", "The Sun Also Rises", "The Old Man and the Sea", "The Sound and the Fury", "Invisible Man",
#   "The Stranger", "Catch-22", "To the Lighthouse", "A Clockwork Orange", "Animal Farm",
#   "Fahrenheit 451", "A Farewell to Arms", "The Handmaid's Tale", "The Road", "Beloved",
#   "The Cider House Rules", "The Stand", "The Book Thief", "Middlesex", "The Secret Life of Bees",
#   "The Poisonwood Bible", "The Help", "The Lovely Bones", "Room", "The Fault in Our Stars",
#   "The Goldfinch", "The Maze Runner", "The Girl with the Dragon Tattoo", "Gone Girl", "The Hunger Games",
#   "The Giver", "The Curious Incident of the Dog in the Night-Time", "The Perks of Being a Wallflower", "The Catcher in the Rye",
#   "The Great Gatsby", "To Kill a Mockingbird", "Pride and Prejudice", "1984", "Harry Potter and the Philosopher's Stone"
# ]

# # Array of additional actual author names
# additional_author_names = [
#   "Margaret Atwood", "J.R.R. Tolkien", "Kurt Vonnegut", "William Golding", "John Steinbeck",
#   "Alice Walker", "Toni Morrison", "Joseph Heller", "Sylvia Plath", "J.R.R. Tolkien",
#   "Donna Tartt", "Ernest Hemingway", "Ernest Hemingway", "William Faulkner", "Ralph Ellison",
#   "Albert Camus", "Joseph Heller", "Virginia Woolf", "Anthony Burgess", "George Orwell",
#   "Ray Bradbury", "Ernest Hemingway", "Margaret Atwood", "Cormac McCarthy", "Toni Morrison",
#   "John Irving", "Stephen King", "Markus Zusak", "Jeffrey Eugenides", "Sue Monk Kidd",
#   "Barbara Kingsolver", "Kathryn Stockett", "Alice Sebold", "Emma Donoghue", "John Green",
#   "Donna Tartt", "James Dashner", "Stieg Larsson", "Gillian Flynn", "Suzanne Collins",
#   "Lois Lowry", "Mark Haddon", "Stephen Chbosky", "J.D. Salinger", "F. Scott Fitzgerald",
#   "Harper Lee", "Jane Austen", "George Orwell", "J.K. Rowling"
# ]

# # Generate additional 50 books with actual authors and publication years
# (51..100).each do |n|
#   author = Author.create(
#     name: additional_author_names.sample,
#     email: Faker::Internet.email
#   )

#   book = Book.create(
#     title: additional_book_titles.sample,
#     author_id: author.id,
#     year_published: rand(1800..2023)
#   )
# end

# puts "Done seeding."



puts "seeding ..."
books = [
    { title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", year_published: 1997 },
    { title: "To Kill a Mockingbird", author: "Harper Lee", year_published: 1960 },
    { title: "1984", author: "George Orwell", year_published: 1949 },
    { title: "The Great Gatsby", author: "F. Scott Fitzgerald", year_published: 1925 },
    { title: "Pride and Prejudice", author: "Jane Austen", year_published: 1813 },
    { title: "The Catcher in the Rye", author: "J.D. Salinger", year_published: 1951 },
    { title: "Moby-Dick", author: "Herman Melville", year_published: 1851 },
    { title: "The Lord of the Rings", author: "J.R.R. Tolkien", year_published: 1954 },
    { title: "The Hobbit", author: "J.R.R. Tolkien", year_published: 1937 },
    { title: "Brave New World", author: "Aldous Huxley", year_published: 1932 },
    { title: "The Chronicles of Narnia", author: "C.S. Lewis", year_published: 1950 },
    { title: "The Da Vinci Code", author: "Dan Brown", year_published: 2003 },
    { title: "The Hunger Games", author: "Suzanne Collins", year_published: 2008 },
    { title: "The Alchemist", author: "Paulo Coelho", year_published: 1988 },
    { title: "The Picture of Dorian Gray", author: "Oscar Wilde", year_published: 1890 },
    { title: "The Odyssey", author: "Homer", year_published: -800 },
    { title: "The Adventures of Tom Sawyer", author: "Mark Twain", year_published: 1876 },
    { title: "The Sun Also Rises", author: "Ernest Hemingway", year_published: 1926 },
    { title: "Jane Eyre", author: "Charlotte Bronte", year_published: 1847 },
    { title: "Gone with the Wind", author: "Margaret Mitchell", year_published: 1936 },
    { title: "The Kite Runner", author: "Khaled Hosseini", year_published: 2003 },
    { title: "The Count of Monte Cristo", author: "Alexandre Dumas", year_published: 1844 },
    { title: "Frankenstein", author: "Mary Shelley", year_published: 1818 },
    { title: "The Grapes of Wrath", author: "John Steinbeck", year_published: 1939 },
    { title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marquez", year_published: 1967 },
    { title: "The Shining", author: "Stephen King", year_published: 1977 },
    { title: "The Handmaid's Tale", author: "Margaret Atwood", year_published: 1985 },
    { title: "The Fault in Our Stars", author: "John Green", year_published: 2012 },
    { title: "Sapiens: A Brief History of Humankind", author: "Yuval Noah Harari", year_published: 2011 },
    { title: "The Book Thief", author: "Markus Zusak", year_published: 2005 }
    ]

    books.each { |book| Book.create(book) }
    puts "Now seeding authors.."

    authors = [
        { name: "J.K. Rowling", email: "jkrowling@example.com" },
        { name: "Harper Lee", email: "harperlee@example.com" },
        { name: "George Orwell", email: "georgeorwell@example.com" },
        { name: "F. Scott Fitzgerald", email: "fscottfitzgerald@example.com" },
        { name: "Jane Austen", email: "janeausten@example.com" },
        { name: "J.D. Salinger", email: "jdsalinger@example.com" },
        { name: "Herman Melville", email: "hermanmelville@example.com" },
        { name: "J.R.R. Tolkien", email: "jrrtolkien@example.com" },
        { name: "Aldous Huxley", email: "aldoushuxley@example.com" },
        { name: "C.S. Lewis", email: "cslewis@example.com" },
        { name: "Dan Brown", email: "danbrown@example.com" },
        { name: "Suzanne Collins", email: "suzannecollins@example.com" },
        { name: "Paulo Coelho", email: "paulocoelho@example.com" },
        { name: "Oscar Wilde", email: "oscarwilde@example.com" },
        { name: "Homer", email: "homer@example.com" },
        { name: "Mark Twain", email: "marktwain@example.com" },
        { name: "Ernest Hemingway", email: "ernesthemingway@example.com" },
        { name: "Charlotte Bronte", email: "charlottebronte@example.com" },
        { name: "Margaret Mitchell", email: "margaretmitchell@example.com" },
        { name: "Khaled Hosseini", email: "khaledhosseini@example.com" },
        { name: "Alexandre Dumas", email: "alexandredumas@example.com" },
        { name: "Mary Shelley", email: "maryshelley@example.com" },
        { name: "John Steinbeck", email: "johnsteinbeck@example.com" },
        { name: "Gabriel Garcia Marquez", email: "gabrielmarquez@example.com" },
        { name: "Stephen King", email: "stephenking@example.com" },
        { name: "Margaret Atwood", email: "margaretatwood@example.com" },
        { name: "John Green", email: "johngreen@example.com" },
        { name: "Yuval Noah Harari", email: "yuvalharari@example.com" },
        { name: "Markus Zusak", email: "markuszusak@example.com" }
    ]
    authors.each { |author| Author.create(author) }

    puts "Now seeding categories.."

    categories = [
        { name: "Fiction" },
        { name: "Science Fiction" },
        { name: "Mystery" },
        { name: "Fantasy" },
        { name: "Romance" },
        { name: "Horror" },
        { name: "Thriller" },
        { name: "Historical Fiction" },
        { name: "Biography" },
        { name: "Self-Help" },
        { name: "Business" },
        { name: "Travel" },
        { name: "Science" },
        { name: "Philosophy" },
        { name: "Psychology" },
        { name: "History" },
        { name: "Art" },
        { name: "Cooking" },    
        { name: "Sports" },
        { name: "Technology" },
        { name: "Poetry" }, 
        { name: "Religion" },
        { name: "Children" },
        { name: "Young Adult" },
        { name: "Comics" },
        { name: "Graphic Novels" }, 
        { name: "Memoir" },
        { name: "Education" },
        { name: "Politics" },
        { name: "Music" }
    ]
    categories.each { |category| Category.create(category) }
puts "done seeding ..."