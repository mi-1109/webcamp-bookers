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
    if book.save
      redirect_to book_path(book.id), notice: "successfully registered"
    else
      @book = book
      @books = Book.all
      render action: :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id), notice: "successfully updated"
    else
      @book = book
      render action: :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path, notice: "successfully deleted"
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
