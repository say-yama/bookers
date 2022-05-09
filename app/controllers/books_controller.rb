class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    book = Book.new(list_params)
    book.save
    redirect_to "/"
  end

  def show
  end

  def edit
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
