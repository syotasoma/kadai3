class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_image_params)
    @book.user_id = current_image.id
    @book.save
    redirect_to books_path
  end 
  
  def index
    @book = Book.all
  end 
  

  def show
    #12章のとこ
  end
  
  private
  
  def book_params
    params.require(:books).paermit(:tilte, :opinion)
  end 
end
