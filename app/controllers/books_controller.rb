class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_image_params)
    @book.user_id = current_image.id
    @book.save
    redirect_to books_path
  end 
  
  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end 
  

  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end 
  
  private
  
  def book_params
    params.require(:books).paermit(:tilte, :opinion)
  end 
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end 
end 
