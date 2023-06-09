class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  # GET /books
  get '/books' do
    books = Book.all
    books.to_json
  end

  # GET /authors
  get '/authors' do
    authors = Author.all
    authors.to_json
  end
  post '/authors' do
    auth = Author.create(
      name: params[:name],
      email: params[:email]
    )
    auth.to_json
  end

  # GET /books/:id
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  # POST /books
  post '/books' do
    book = Book.new(params)
    if book.save
      book.to_json
    else
      status 400
      { error: 'Failed to create book' }.to_json
    end
  end
end
  # # PUT /books/:id
  put '/books/:id' do
    book = Book.find(params[:id])
    if book.update(params)
      book.to_json
    else
      status 400
      { error: 'Failed to update book' }.to_json
    end
  end

  # DELETE /books/:id
  delete '/books/:id' do
    book = Book.find(params[:id])
    if book.destroy
      { message: 'Book deleted successfully' }.to_json
    else
      status 400
      { error: 'Failed to delete book' }.to_json
    end
  end
