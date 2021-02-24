class BooksController < ApplicationController

  def collection
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
<<<<<<< HEAD
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
=======
>>>>>>> 6c071705bd93929294d5ec6d0954da44b0fbebed
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
